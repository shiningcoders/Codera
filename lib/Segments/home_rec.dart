import 'package:flutter/material.dart';
import 'package:codera/Cards/reccomendation_card.dart';

class RecommendedList extends StatefulWidget {
  @override
  _RecommendedListState createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;
    return Column(
      children: <Widget>[
        SizedBox(height: screenHeight * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: screenWidth * 0.13),
            Text(
              'Recommended for you',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: screenWidth,
                  alignment: Alignment.center,
                  height: screenWidth * 0.53,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 0.0, right: 0.0),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: screenWidth * 0.07,
                        ),
                        RecCard(
                          accentcolor: 0xFF008cbf,
                          buttoncolor: 0xFF36ff97,
                          buttontextcolor: 0xff095900,
                          cardimage: 'http://drive.google.com/uc?export=view&id=14d6ZmnF1h1ERrQoC0BqKWYi3-KlXBc7y',
                          courseimage: 'http://drive.google.com/uc?export=view&id=1P-LhbWu2XQwPYJlmiLUTWHIfoRPvVsI8',
                          courselink: 'http://drive.google.com/open?id=1bOCkovr7b8wN98Mo--gWMEQNEqIbHv_C',
                          objective: '~ Master the fundamentals of writing Python scripts\n~ Learn core Python scripting elements such as variables and flow control structures\n~ Discover how to work with lists and sequence data\n~ Write Python functions to facilitate code reuse\n~ Use Python to read and write files\n~ Make their code robust by handling errors and exceptions properly\n~ Work with the Python standard library\n~ Explore Python\'s object-oriented features\n~ Search text using regular expressions',
                          overview: 'The ultimate python bootcamp, training course leads the students from the basics of writing and running Python scripts to more advanced features such as file operations, regular expressions, working with binary data, and using the extensive functionality of Python 3 modules. Extra emphasis is placed on features unique to Python, such as tuples, array slices, and output formatting.',
                          source: 'Udemy',
                          title: 'Python 3 - The Ultimate Bootcamp',
                          popularity: 87.0,
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        RecCard(
                          accentcolor: 0xFFf26b0a,
                          buttoncolor: 0xFFff0077,
                          buttontextcolor: 0xffffffff,
                          cardimage: 'http://drive.google.com/uc?export=view&id=1zLTqIYqdsYezmyR_2jX5s25GSLi-ayUH',
                          courseimage: 'http://drive.google.com/uc?export=view&id=1E2O7J1PuzdmTUpIHK_Gg66pg0TW88mok',
                          courselink: 'http://drive.google.com/open?id=1EBcWzDZSNgEkzA2aueNDHtIxE4z9Jn77',
                          objective: '~ In-depth knowledge of Deep Neural Networks\n~ Comprehensive knowledge of various Neural Network architectures such as Convolutional Neural Network, Recurrent Neural Network, Autoencoders\n~ Implementation of Collaborative Filtering with RBM\n~ The exposure to real-life industry-based projects which will be executed using TensorFlow library\n~ Rigorous involvement of an SME throughout the AI & Deep Learning Training to learn industry standards and best practices',
                          overview: 'TensorFlow makes it easy for beginners and experts to create machine learning models for desktop, mobile, web, and cloud. In this courese, you will learn the foundation of TensorFlow. This course is both for beginners and experts to help you create your next machine learning project. After completing of this course you would be able to deploy your own Machine Learning models to Websites, Mobile Applications, and Desktops Softwares.',
                          source: '365 DataScience',
                          title: 'Deep Learning with TensorFlow',
                          popularity: 48.0,
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        RecCard(
                          accentcolor: 0xFF0f67f5,
                          buttoncolor: 0xFF36a1ff,
                          buttontextcolor: 0xff000000,
                          cardimage: 'http://drive.google.com/uc?export=view&id=1-o-insCoGXLW8_FDKBlBYhpJ8kegiShx',
                          courseimage: 'http://drive.google.com/uc?export=view&id=1B5pHIDsQ5l6mO8zuC_8-aM5x7Hvaj-Bw',
                          courselink: 'http://drive.google.com/open?id=13uL1tQwHoRxiKDejOadR3mMVCHxx3PwJ',
                          objective: '~ Understand the fundamentals of the Flutter framework\n~ Incorporate widgets and state into your app\n~ Use Flutter\'s tools to enhance your development process\n~ Customize your app with Material Design, themes, assets, and more\n~ Make your app interactive with text input, gestures, and more\n~ Retrieve local and real-time data from the web\n~ Build your own Real world Application\n~ Other Apps examples & Features',
                          overview: 'In this course, you\'ll learn how to use Flutter to quickly develop high-quality, interactive mobile applications for iOS and Android devices. Whether you\’re just getting started with mobile app development, or experienced with other mobile app frameworks, you\’ll enjoy the high-velocity development and quality apps that Flutter enables. Learn how to develop fast by making use of Flutter\'s reactive framework, stateful Hot Reload, and integrated tooling. Customize your app with rich, composable widgets, built-in animations, and a layered, extensible architecture.\n\nAfter completing this course you would be able to make any app for Android, iOS, Website and Desktop(Beta).',
                          source: 'Udemy',
                          title: 'Complete Flutter App Development',
                          popularity: 56.0,
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        RecCard(
                          accentcolor: 0xFF7a0cf0,
                          buttoncolor: 0xFFeb0e87,
                          buttontextcolor: 0xffeaff00,
                          cardimage: 'http://drive.google.com/uc?export=view&id=1ruYuBkyPLdlyGQZI32TdVnCdipyJfSc-',
                          courseimage: 'http://drive.google.com/uc?export=view&id=1MmUJJqYNE3AQLSAzLqqyK1zP1Zuy0Mh7',
                          courselink: 'http://drive.google.com/open?id=0ByWO0aO1eI_MdkZwY2VRNzEtbDg',
                          objective: '~ Understand the basic syntax and control structures of the language\n~ Apply Go’s concurrency model to build massively parallel systems\n~ Grasp the purpose of types, which is especially important if you’re coming from a dynamically typed language like Javascript or Ruby\n~ Organize code through the use of packages\n~ Use the Go runtime to build and compile projects\n~ Get insight into critical design decisions in the language\n~ Gain a sense of when to use basic language features',
                          overview: 'This course is designed to get you up and running as fast as possible with Go. We\’ll quickly cover the basics, then dive into some of the more advanced features of the language.\nGo is designed to be easy to pick up, but tough to master. Through multiple projects, quizzes, and assignments, you\’ll quickly start to master the language\’s quirks and oddities. Go is like any other language — you have to write code to learn it! This course will give you ample opportunities to strike out on your own and start working on your own programs.',
                          source: 'Udemy',
                          title: 'Let\'s GO',
                          popularity: 66.0,
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        RecCard(
                          accentcolor: 0xFFff40f2,
                          buttoncolor: 0xFFa14aff,
                          buttontextcolor: 0xffe6cfff,
                          cardimage: 'http://drive.google.com/uc?export=view&id=1RZCaRuSiwAHSeyCwpbNr6wi18bv1arTw',
                          courseimage: 'http://drive.google.com/uc?export=view&id=13E1nR2bsU_tVUCzwroKQlw5llZV199vR',
                          courselink: 'http://drive.google.com/open?id=1E2N2ykcOKY9zMGX-WlNJEkSL-34B_GyM',
                          objective: '~ Learn how to develop, compile, and execute C++ programs as well as syntax, functions, containers, and how to link together multiple files.\n~ Learn to build classes, interfaces, and generic templates to create an object-oriented C++ program. Learn how modern C++ includes many tools for writing clean, reusable code.\n~ Learn to control static and dynamic memory in C++ using the Resource Acquisition Is Initialization pattern, pointers, references, and move semantics\n~ C++ supports running multiple execution paths in parallel. Learn how to launch process and threads in order to execute logic in parallel. Then advance to thread synchronization and communication, to experience the full power of concurrent programming\n~ In your Capstone Project, you will put all of your new C++ skills to use! Utilize the core concepts from this Nanodegree program - object-oriented programming, memory management, and concurrency - to build your own application using C++',
                          overview: ' You will learn about a vide variety of high-level C++ software development techniques. It is highly recommended that students complete both the “Introduction to C++” and “Intermediate C++” courses before attempting this one. However, with a solid understanding of the prerequisites, it is not absolutely necessary to take these courses. Prerequisites include an understanding of pointers, memory allocation, file processing, and general OOP concepts. This course will cover the following concepts: Exceptions, C++ templates, Iterators and advanced Class mechanics, and design patterns.',
                          source: 'Tuts Galaxy',
                          title: 'Ultimate C++',
                          popularity: 85.0,
                        ),
                        SizedBox(
                          width: screenWidth * 0.06,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
