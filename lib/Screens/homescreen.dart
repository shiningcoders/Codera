import 'package:codera/Screens/pagenotavailable.dart';
import 'package:codera/Screens/books.dart';
import 'package:codera/Screens/codey.dart';
import 'package:codera/Screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:codera/home.dart';
import './settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: DefaultTabController(
        length: 5,
            child: Scaffold(
              backgroundColor: Colors.white,
            appBar: AppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.bubble_chart, color:Colors.black, size: 30.0,),
              onPressed: () {
                  Navigator.push<Widget>(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => Codey(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
      } 
      ),
        );
          },),
            ],
            elevation: 0.0,
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              labelStyle: TextStyle(fontSize: 35.0, color: Colors.black, fontWeight: FontWeight.bold),
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: 'HOME',),
                Tab(text: 'COURSES',),
                Tab(text: 'BOOKS',),
                Tab(text: 'SOFTWARES',),
                Tab(text: 'SETTINGS',),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              CoursesPage(),
              BooksPage(),
              PageNotAvailable(),
              SettingsPage(),
            ],
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}

