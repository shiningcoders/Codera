import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:url_launcher/url_launcher.dart';


class CoursePage extends StatelessWidget {

  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  List<CircularStackEntry> data = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
      new CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'Q1'),
      new CircularSegmentEntry(1000.0, Colors.green[200], rankKey: 'Q2'),
      new CircularSegmentEntry(2000.0, Colors.blue[200], rankKey: 'Q3'),
      new CircularSegmentEntry(1000.0, Colors.yellow[200], rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

  CoursePage({
  @required this.objective,
  @required this.overview, 
  @required this.imagelink, 
  @required this.courselink, 
  @required this.title, 
  @required this.source, 
  @required this.buttoncolor, 
  @required this.accentcolor,
  @required this.buttontextcolor,
  @required this.popularity,
  }
  );
  //var objective = '~ In-depth knowledge of Deep Neural Networks\n~ Comprehensive knowledge of various Neural Network architectures such as Convolutional Neural Network, Recurrent Neural Network, Autoencoders\n~ Implementation of Collaborative Filtering with RBM\n~ The exposure to real-life industry-based projects which will be executed using TensorFlow library\n~ Rigorous involvement of an SME throughout the AI & Deep Learning Training to learn industry standards and best practices';
   //var overview =
       // 'TensorFlow makes it easy for beginners and experts to create machine learning models for desktop, mobile, web, and cloud. In this courese, you will learn the foundation of TensorFlow. This course is both for beginners and experts to help you create your next machine learning project. After completing of this course you would be able to deploy your own Machine Learning models to Websites, Mobile Applications, and Desktops Softwares.';
    var imagelink;
    var title;
    var overview;
    var objective;
    var courselink;
    var source;
    var buttoncolor;
    var accentcolor;
    var buttontextcolor;
    double popularity;
  
  @override
  Widget build(BuildContext context) {
    
   
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
              height: screenHeight * 1.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  ),
                  child: Container(child: Column(children: <Widget>[
                    SizedBox(height: screenWidth*0.13,),
                    Container(
                      height: screenWidth*0.5,
                      width: screenWidth*0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/loadingImagePlaceholder.png'),
                        ),
                      ),
                    ),
                  ],),),
            ),
            Container(
              height: screenHeight * 1.5,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  image: DecorationImage(
                      image: NetworkImage(imagelink),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter)
                  ),
            ),
              ]
            ),
            Column(
              children: <Widget>[
                SizedBox(height: screenWidth*1.2,),
                Expanded(
                    child: Container(
                    height: screenWidth*0.52,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          ),
                    ),
                ),
              ],
            ),
            ListView(
              physics: BouncingScrollPhysics(parent: BouncingScrollPhysics()),
              children: <Widget>[
                SizedBox(
                  height: screenWidth * 0.67,
                ),
                Container(
                  padding: EdgeInsets.all(00.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50.0)),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: screenHeight*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: screenWidth*0.03,
                            ),
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: screenWidth*0.05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Course Overview',
                              style: TextStyle(
                                fontSize: screenWidth*0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                  child: Text(overview,
                                  style: TextStyle(
                                    fontSize: screenWidth*0.04,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Objectives',
                              style: TextStyle(
                                fontSize: screenWidth*0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                  child: Text(objective,
                                  style: TextStyle(
                                    fontSize: screenWidth*0.04,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.03,
                        ),
                        AnimatedCircularChart(
  key: _chartKey,
  size: const Size(250.0, 250.0),
  initialChartData: <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(
          popularity,
          Color(int.parse(buttoncolor)),
          rankKey: 'completed',
        ),
        new CircularSegmentEntry(
          (100.00-popularity),
          Colors.black26,
          rankKey: 'remaining',
        ),
      ],
      rankKey: 'progress',
    ),
  ],
  chartType: CircularChartType.Radial,
  percentageValues: true,
  holeLabel: 'Popularity',
  labelStyle: new TextStyle(
    color: Color(int.parse(accentcolor)),
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  ),
),
                        SizedBox(height: screenHeight*0.03,),
                        FlatButton(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 40.0, right: 40.0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          )),
                          color: Color(int.parse(buttoncolor)),
                          splashColor: Color(int.parse(accentcolor)),
                          child: Text('Start Course', style: TextStyle(color: Color(int.parse(buttontextcolor)), fontSize: 18.0),),
                          onPressed: () => launch(courselink),
                        ),
                        SizedBox(
                          height: screenHeight*0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                  child: Text('Source : '+ source,
                                  style: TextStyle(
                                    fontSize: screenWidth*0.04,
                                    color: Color(int.parse(accentcolor)),
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight*0.01,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

