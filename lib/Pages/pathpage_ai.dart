import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AIPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFF00ffed;
    var gradient2 = 0xFF4b42ff;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(gradient2),
        body: Stack(
          children: <Widget>[
            Container(
              height: screenHeight * 0.28,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(gradient1),
                    Color(gradient2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Artificial Intelligence',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                Container(
                  padding: EdgeInsets.all(00.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: screenHeight * 0.03),
                        SizedBox(width: screenWidth * 0.13),
                        Text(
                          'Available Courses',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight * 0.06),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 25.0,
                          runSpacing: 25.0,
                          children: <Widget>[
                            CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=15z-IcKtErPYCRwy9IHIFPXTVsP6lmW9x',
                courseimage: 'https://drive.google.com/uc?export=view&id=1HwTCLWElzxRB6C0lPL4VW-tnPGm-j_67',
                courselink: 'https://drive.google.com/drive/folders/0B0DQiknXaFG3bkdNUG8wYkFIZjA?usp=sharing',
                buttoncolor: 0xFF00e8ff,
                buttontextcolor: 0xFF0e37f1,
                accentcolor: 0xFFfe19aa,
                title: 'AI Fundamentals',
                overview: 'Artificial Intelligence (AI) is a field that has a long history but is still constantly and actively growing and changing. In this course, you’ll learn the basics of modern AI as well as some of the representative applications of AI. Along the way, we also hope to excite you about the numerous applications and huge possibilities in the field of AI, which continues to expand human capability beyond our imagination.',
                objective: '~ Statistics, Uncertainty, and Bayes networks.\n~ Machine learning.\n~ Logic and planning.\n~ Image processing and computer vision.\n~ Robotics and robot motion planning.\n~ Natural language processing and information retrieval.',
                source: 'Udemy',
                popularity: 70.4,
                height: 0.7,
                width: 0.9,
              ),
                        CourseCard(
                          accentcolor: 0xFFf26b0a,
                          buttoncolor: 0xFFff0077,
                          buttontextcolor: 0xffffffff,
                          cardimage: 'https://drive.google.com/uc?export=view&id=1zLTqIYqdsYezmyR_2jX5s25GSLi-ayUH',
                          courseimage: 'https://drive.google.com/uc?export=view&id=1E2O7J1PuzdmTUpIHK_Gg66pg0TW88mok',
                          courselink: 'https://drive.google.com/open?id=1EBcWzDZSNgEkzA2aueNDHtIxE4z9Jn77',
                          objective: '~ In-depth knowledge of Deep Neural Networks\n~ Comprehensive knowledge of various Neural Network architectures such as Convolutional Neural Network, Recurrent Neural Network, Autoencoders\n~ Implementation of Collaborative Filtering with RBM\n~ The exposure to real-life industry-based projects which will be executed using TensorFlow library\n~ Rigorous involvement of an SME throughout the AI & Deep Learning Training to learn industry standards and best practices',
                          overview: 'TensorFlow makes it easy for beginners and experts to create machine learning models for desktop, mobile, web, and cloud. In this courese, you will learn the foundation of TensorFlow. This course is both for beginners and experts to help you create your next machine learning project. After completing of this course you would be able to deploy your own Machine Learning models to Websites, Mobile Applications, and Desktops Softwares.',
                          source: '365 DataScience',
                          title: 'Deep Learning with TensorFlow',
                          popularity: 48.0,
                          height: 0.55,
                          width: 0.405,
                        ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1LVJLJfBXIFlki2WkReKiIJRUuTM7DJFZ',
                courseimage: 'https://drive.google.com/uc?export=view&id=1BZHsdlYnbFbe2TjWMQGuUIhpCsbj64VZ',
                courselink: 'https://drive.google.com/open?id=1esxAlAQ7rlh2eM4wdYfcfyOA--raxQul',
                buttoncolor: 0xFFff1239,
                buttontextcolor: 0xFFfff200,
                accentcolor: 0xFFc933ff,
                title: 'iOS Machine Learning',
                overview: 'In this short course, we\'ll show you how to incorporate Apple\'s Core ML framework into your app. You\'ll also get a quick overview of machine learning fundamentals, and exposure to real-world examples of companies using machine learning technology in their iOS apps.',
                objective: '~ Get a quick overview of fundamental machine learning concepts\n~ Learn the basics of Core ML\n~ Incorporate an image classification model into an app\n~ Understand when you would use a custom model\n~ Convert a custom model for use with Core ML\n~ Enjoy bonus features, like an interview with Meghan Kane, the engineer who inspired this course\n~ Build a challenge app',
                source: 'Udemy',
                popularity: 30.4,
                height: 0.55,
                width: 0.405,
              ),
                            CourseCard(
                              accentcolor: 0xFF008cbf,
                              buttoncolor: 0xFF36ff97,
                              buttontextcolor: 0xff095900,
                              cardimage:
                                  'https://drive.google.com/uc?export=view&id=1C6sX_g_axtPE3aZ5QoAMNACPCEDfgit1',
                              courseimage:
                                  'https://drive.google.com/uc?export=view&id=1P-LhbWu2XQwPYJlmiLUTWHIfoRPvVsI8',
                              courselink:
                                  'https://drive.google.com/open?id=1bOCkovr7b8wN98Mo--gWMEQNEqIbHv_C',
                              objective:
                                  '~ Master the fundamentals of writing Python scripts\n~ Learn core Python scripting elements such as variables and flow control structures\n~ Discover how to work with lists and sequence data\n~ Write Python functions to facilitate code reuse\n~ Use Python to read and write files\n~ Make their code robust by handling errors and exceptions properly\n~ Work with the Python standard library\n~ Explore Python\'s object-oriented features\n~ Search text using regular expressions',
                              overview:
                                  'The ultimate python bootcamp, training course leads the students from the basics of writing and running Python scripts to more advanced features such as file operations, regular expressions, working with binary data, and using the extensive functionality of Python 3 modules. Extra emphasis is placed on features unique to Python, such as tuples, array slices, and output formatting.',
                              source: 'Udemy',
                              title: 'Python 3 - The Ultimate Bootcamp',
                              popularity: 82.0,
                              height: 0.55,
                              width: 0.9,
                            ),
                            
                            Container(
                              height: 30.0,
                              color: Colors.transparent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            LineAwesomeIcons.try_icon,
            color: Colors.black54,
            size: 36.0,
          ),
          tooltip: 'Suggest',
          onPressed: () => launch('https://codera.typeform.com/to/zpqb3S'),
          backgroundColor: Color(gradient1),
          splashColor: Color(gradient2),
        ),
      ),
    );
  }
}
