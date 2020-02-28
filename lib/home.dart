import 'package:codera/Pages/coursepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:codera/Segments/home_rec.dart';
import 'package:codera/Segments/home_paths.dart';
import 'package:codera/Segments/home_bookshelf.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    //Adding Carousel

    Widget image_carousel = new Container(
        child: CarouselSlider(
          //height: 400.0,
          aspectRatio: MediaQuery.of(context).size.width *5.8 / MediaQuery.of(context).size.width * 0.4,
          enlargeCenterPage: true,
          autoPlay: true,
          items: [
            'https://drive.google.com/uc?export=view&id=1C6sX_g_axtPE3aZ5QoAMNACPCEDfgit1',
            'https://drive.google.com/uc?export=view&id=10S6LIxc2vMYYCnbMeMAJcUF8uk7pSnAJ',
            'https://drive.google.com/uc?export=view&id=1rSejhn4-c_470P1h8wcYctCyj_uricTn',
            'https://drive.google.com/uc?export=view&id=1x9nAf0mcWvOk4_Lgdwd8wefLGll_0700',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 7.0),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          
                          image:
                              AssetImage('images/loadingImagePlaceholder.png'),
                        )),
                    child: GestureDetector(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(i, fit: BoxFit.cover)),
                        onTap: () {
        Navigator.push<Widget>(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => CoursePage(
                          accentcolor: 0xFF008cbf,
                          buttoncolor: 0xFF36ff97,
                          buttontextcolor: 0xff095900,
                          imagelink: 'https://drive.google.com/uc?export=view&id=1P-LhbWu2XQwPYJlmiLUTWHIfoRPvVsI8',
                          courselink: 'https://drive.google.com/open?id=1bOCkovr7b8wN98Mo--gWMEQNEqIbHv_C',
                          objective: '~ Master the fundamentals of writing Python scripts\n~ Learn core Python scripting elements such as variables and flow control structures\n~ Discover how to work with lists and sequence data\n~ Write Python functions to facilitate code reuse\n~ Use Python to read and write files\n~ Make their code robust by handling errors and exceptions properly\n~ Work with the Python standard library\n~ Explore Python\'s object-oriented features\n~ Search text using regular expressions',
                          overview: 'The ultimate python bootcamp, training course leads the students from the basics of writing and running Python scripts to more advanced features such as file operations, regular expressions, working with binary data, and using the extensive functionality of Python 3 modules. Extra emphasis is placed on features unique to Python, such as tuples, array slices, and output formatting.',
                          source: 'Udemy',
                          title: 'Python 3 - The Ultimate Bootcamp',
                          popularity: 82.0,
                        ),
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
      
                        }));
              },
            );
          }).toList(),
        ));

    //Added Carousel

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
                      height: screenWidth*0.06,
                    ),
                    image_carousel,
                    SizedBox(height: screenWidth*0.07,),
                    RecommendedList(),
                    LearningPathsList(),
                    SizedBox(height: screenWidth*0.05,),
                    BookShelf(),
                    SizedBox(height: screenWidth*0.05,),
                  ],
                )
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


