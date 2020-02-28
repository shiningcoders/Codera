import 'package:codera/Screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

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

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Text('Do you want to exit?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  )),
              actions: <Widget>[
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.close, color: Colors.blue),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text('Nope',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,
                          )),
                    ],
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        'Yup',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => SystemChannels.platform
                      .invokeMethod('SystemNavigator.pop'),
                ),
                SizedBox(
                  width: 5.0,
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;

    bool _isSwitchedTheme = false;
    bool _isSwitchedActive = true;

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 70.0,
                    width: screenWidth*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 9.0)
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.update, color: Colors.blue),
                            onPressed: () => launch(
                                'https://drive.google.com/open?id=1fA64ufZGAilBGu5vsga3IQf5l1vmabOC'),
                            tooltip: 'Updates',
                            iconSize: 28,
                          ),
                          IconButton(
                              icon: Icon(LineAwesomeIcons.whatsapp,
                                  color: Color(0xFF10A881)),
                              onPressed: () => launch('https://chat.whatsapp.com/EKv7XAH2LaSBgCas305ljh'),
                              tooltip: 'Group',
                              iconSize: 28),
                          IconButton(
                              icon: Icon(LineAwesomeIcons.code_fork,
                                  color: Colors.red),
                              onPressed: () =>
                                  launch('https://paiza.io/en/projects/new'),
                              tooltip: 'Code Playground',
                              iconSize: 28),
                          IconButton(
                              icon: Icon(LineAwesomeIcons.star_o,
                                  color: Colors.purple),
                              onPressed: () =>
                                  launch('https://codera.typeform.com/to/x4iWM7'),
                              tooltip: 'Feedback',
                              iconSize: 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 750.0,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 9.0)
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 30.0,),
                        Text(
                          'Preferences',
                          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Expanded(flex: 2, child: SizedBox()),
                        //Switches  BOX
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFf5f5f5),
                            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6.0)],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        margin: EdgeInsets.only(left: 30.0, right: 30.0),
                        height: 130.0,
                          child: Column(children: <Widget>[
                            Expanded(flex: 2, child: SizedBox(),),
                            Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
              'Theme',
              style: TextStyle(
                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                            CupertinoSwitch(
              activeColor: Colors.black,
              onChanged: null,//(val) =>
                  //setState(() => _isSwitchedTheme = val),
              value: _isSwitchedTheme,
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
              'Active',
              style: TextStyle(
                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                            CupertinoSwitch(
              activeColor: Colors.greenAccent,
              onChanged: (val) =>
                  setState(() => _isSwitchedActive = val),
              value: _isSwitchedActive,
                            ),
                          ],
                        ),
                        Expanded(flex: 2, child: SizedBox(),),
                          ],
                          ),
                        ), //END of Switches BOX
                        Expanded(
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width: screenWidth*0.1),
              Text(
                'Edit Profile',
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Expanded(child: SizedBox(),),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  LineAwesomeIcons.edit,
                  size: 30,
                ),
                onPressed: () {},
              ),
              SizedBox(width: screenWidth*0.1),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () {
                           googleSignIn.signOut().whenComplete((){
                             Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) {
                  return WelcomeScreen();
                  },
                  ),
                  );
                           });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width: screenWidth*0.1),
              Text(
                'Sign Out',
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Expanded(child: SizedBox(),),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  LineAwesomeIcons.sign_out,
                  size: 30,
                ),
                onPressed: () {
                           googleSignIn.signOut().whenComplete((){
                             Navigator.push<Widget>(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => WelcomeScreen(),
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
      ),
      SizedBox(width: screenWidth*0.1),
      ],
      ),
      ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(),
                        ),
                        Text(
                          'Privacy & Other',
                          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0,
              ),
                        ),
                        Expanded(flex: 2, child: SizedBox()),
                        InkWell(
                          onTap: () => launch('https://coderasc.wixsite.com/codera/privacy-policy'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: SizedBox(),
              ),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
                onPressed: () => launch('https://coderasc.wixsite.com/codera/privacy-policy'),
              ),
              Expanded(
                child: SizedBox(),
              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () => launch('https://www.websitepolicies.com/policies/view/iKzlZyJW'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Text(
                'Terms & Conditions',
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: SizedBox(),
              ),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
                onPressed: () => launch('https://www.websitepolicies.com/policies/view/iKzlZyJW'),
              ),
              Expanded(
                child: SizedBox(),
              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () => launch('https://www.termsofusegenerator.net/live.php?token=VQQF1rTFwMsz3JrXaTbinTDPAb56FUfC'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Text(
                'Terms of Use',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
                onPressed: () => launch('https://www.termsofusegenerator.net/live.php?token=VQQF1rTFwMsz3JrXaTbinTDPAb56FUfC'),
              ),
              Expanded(
                child: SizedBox(),
              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () => launch('https://coderasc.wixsite.com/codera/about'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Text(
                'About',
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500,
                    color: Color(0xFF1D3FFC),
                    ),
              ),
              Expanded(
                
                child: SizedBox(),
              ),
              IconButton(
                splashColor: Colors.blue,
                icon: Icon(
                  LineAwesomeIcons.info_circle,
                  size: 24,
                  color: Color(0xFF1D3FFC),
                ),
                onPressed: () => launch('https://coderasc.wixsite.com/codera/about'),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0,),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
