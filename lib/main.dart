import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Page imports

import 'package:codera/Screens/welcome.dart';
import './home.dart';
import 'package:codera/Screens/homescreen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  
@override
Widget build(BuildContext context) {
  SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      
    return  MaterialApp(
      builder: (context, child) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: child,
    );
  },
      debugShowCheckedModeBanner: false,
    home:  Splash(),
    );
}
}

class Splash extends StatefulWidget {
@override
SplashState createState() =>  SplashState();
}

class SplashState extends State<Splash> {
Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
    Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) =>  HomeScreen()));
    } else {
    prefs.setBool('seen', true);
    Navigator.of(context).pushReplacement(
         MaterialPageRoute(builder: (context) =>  Welcome()));
    }
}

@override
void initState() {
    super.initState();
    Timer(Duration(milliseconds: 200), () {
    checkFirstSeen();
    });
}

@override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D3FFC),
    body: Center(
        child: Text('< CODERA / >', style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.09, fontWeight: FontWeight.bold),),
    ),
    );
}
}

class Home extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return HomePage();
}
}

class Welcome extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return WelcomeScreen();
  }

}

