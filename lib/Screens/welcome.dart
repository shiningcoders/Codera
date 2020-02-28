import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './homescreen.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    return 'signInWithGoogle succeeded: $user';
  }

  void signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Sign Out");
  }

  Future<bool> _onBackPressed() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: SafeArea(
              child: Scaffold(
          body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(margin: EdgeInsets.only(top: 40.0),
                  height: screenWidth*0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox(),flex: 2,),
              Text('WELCOME', style: TextStyle(fontSize: screenWidth*0.07)),
              Expanded(child: SizedBox(),),
              Text('Start your Journey\nBuild Skills and show your\ntalent to the world',style: TextStyle(fontSize: screenWidth*0.04), textAlign: TextAlign.center),
              Expanded(child: SizedBox(),flex: 2,),
              _signInButton(),
              Expanded(child: SizedBox(),flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('by Get Started you are accepting our',style: TextStyle(fontSize: screenWidth*0.03), textAlign: TextAlign.center),
                  Text(' '),
                  InkWell(
                    child: Text('T&C',style: TextStyle(fontSize: screenWidth*0.03, color: Colors.blue, decoration: TextDecoration.underline,)),
                    onTap: () => launch('https://coderasc.wixsite.com/codera/terms-conditions'),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
    ),
    ),
      ),
    );
  }

  Widget _signInButton() {
    return FlatButton(
      splashColor: Color(0xFF5F1DFC),
      color: Color(0xFF1D3FFC),
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.push<Widget>(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeInOutCubic;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
      }
      ),
      );
      });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*0.05,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}