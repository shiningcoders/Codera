import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LanguagesPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFFa890fe;
    var gradient2 = 0xFFff5757;
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
                        'Programming Languages',
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
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
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: screenHeight * 0.06),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 25.0,
                          runSpacing: 25.0,
                          children: <Widget>[
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
                        CourseCard(
                          accentcolor: 0xFFff40f2,
                          buttoncolor: 0xFFa14aff,
                          buttontextcolor: 0xffe6cfff,
                          cardimage: 'https://drive.google.com/uc?export=view&id=1RZCaRuSiwAHSeyCwpbNr6wi18bv1arTw',
                          courseimage: 'https://drive.google.com/uc?export=view&id=13E1nR2bsU_tVUCzwroKQlw5llZV199vR',
                          courselink: 'https://drive.google.com/open?id=1E2N2ykcOKY9zMGX-WlNJEkSL-34B_GyM',
                          objective: '~ Learn how to develop, compile, and execute C++ programs as well as syntax, functions, containers, and how to link together multiple files.\n~ Learn to build classes, interfaces, and generic templates to create an object-oriented C++ program. Learn how modern C++ includes many tools for writing clean, reusable code.\n~ Learn to control static and dynamic memory in C++ using the Resource Acquisition Is Initialization pattern, pointers, references, and move semantics\n~ C++ supports running multiple execution paths in parallel. Learn how to launch process and threads in order to execute logic in parallel. Then advance to thread synchronization and communication, to experience the full power of concurrent programming\n~ In your Capstone Project, you will put all of your new C++ skills to use! Utilize the core concepts from this Nanodegree program - object-oriented programming, memory management, and concurrency - to build your own application using C++',
                          overview: ' You will learn about a vide variety of high-level C++ software development techniques. It is highly recommended that students complete both the “Introduction to C++” and “Intermediate C++” courses before attempting this one. However, with a solid understanding of the prerequisites, it is not absolutely necessary to take these courses. Prerequisites include an understanding of pointers, memory allocation, file processing, and general OOP concepts. This course will cover the following concepts: Exceptions, C++ templates, Iterators and advanced Class mechanics, and design patterns.',
                          source: 'Tuts Galaxy',
                          title: 'Ultimate C++',
                          popularity: 85.0,
                          height: 0.4,
                          width: 0.405,
                        ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1ws6IscNwlSPQ1mq4NeP53tmus6XebuTL',
                courseimage: 'https://drive.google.com/uc?export=view&id=14Z6pPPXtxunDw2OjvCRbimluNrHo41vA',
                courselink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MamwydHF5MGg2WFE',
                buttoncolor: 0xFF349FF6,
                buttontextcolor: 0xFFA6E8DE,
                accentcolor: 0xFFF9428F,
                title: 'Ultimate C',
                overview: 'In this ultimate C course, you will build command over c language. This is a complete overview course which builds your foundation of C language. In this course you will understand variables and the different data types, be able to utilize functions and arrays, understand the  concept of pointers, learn about control flow (decision statements and iteration).\nYou will be in a position to apply for real-time programming positions, and truly understand the core language that most modern languages are based on!\nIf you have previously used the C programming language, then this course will deepen your understanding of it. If you have never used it, no problem, you will see that it can help you become a more efficient C developer.',
                objective: '~ Understand the fundamentals of the C Programming Language\n~ Create your first C Application\n~ Understand variables and the different data types\n~ Understand the core language that most modern languages are based on\n~ Make yourself more marketable for entry level programming positions\n~ Apply for real-time programming positions\n~ Learn how to write high-quality code',
                source: 'Lynda',
                popularity: 88.4,
                height: 0.4,
                width: 0.405,
              ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1Ooa2dwgD-jj9HBB3B9kXetvahspvR16X',
                courseimage: 'https://drive.google.com/uc?export=view&id=1UMiBNY0deyDgP_luoPmbG_HtxYXx0zdD',
                courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XTTdhRzh0cDRYWEk',
                buttoncolor: 0xFFFFDE59,
                buttontextcolor: 0xffB68FE5,
                accentcolor: 0xff40B4F9,
                title: 'Mordern JavaScript Course',
                overview: 'Have you ever wanted to learn how to code but didn\'t know where to start? This is a fantastic course to start. Not only is JavaScript easy to learn but it is in demand? If you take this course you will start the fantastic process of learning to code which will lead you to a better life. Coding is one of the most in demand skills if you can code you have a job.',
                objective: '~ Learn the basics of JavaScript\n~ Learn the basics of programming\n~ Build modern and functional websites\n~ Build real world website',
                source: 'Udemy',
                popularity: 60.4,
                height: 0.4,
                width: 0.405,
              ),
                        CourseCard(
                          accentcolor: 0xFF7a0cf0,
                          buttoncolor: 0xFFeb0e87,
                          buttontextcolor: 0xffeaff00,
                          cardimage: 'https://drive.google.com/uc?export=view&id=1ruYuBkyPLdlyGQZI32TdVnCdipyJfSc-',
                          courseimage: 'https://drive.google.com/uc?export=view&id=1MmUJJqYNE3AQLSAzLqqyK1zP1Zuy0Mh7',
                          courselink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MdkZwY2VRNzEtbDg',
                          objective: '~ Understand the basic syntax and control structures of the language\n~ Apply Go’s concurrency model to build massively parallel systems\n~ Grasp the purpose of types, which is especially important if you’re coming from a dynamically typed language like Javascript or Ruby\n~ Organize code through the use of packages\n~ Use the Go runtime to build and compile projects\n~ Get insight into critical design decisions in the language\n~ Gain a sense of when to use basic language features',
                          overview: 'This course is designed to get you up and running as fast as possible with Go. We\’ll quickly cover the basics, then dive into some of the more advanced features of the language.\nGo is designed to be easy to pick up, but tough to master. Through multiple projects, quizzes, and assignments, you\’ll quickly start to master the language\’s quirks and oddities. Go is like any other language — you have to write code to learn it! This course will give you ample opportunities to strike out on your own and start working on your own programs.',
                          source: 'Udemy',
                          title: 'Let\'s GO',
                          popularity: 66.0,
                          height: 0.4,
                          width: 0.405,
                        ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1mGD52SmzEQpWe8umA_ueJq7EPIzEj6wp',
                courseimage: 'https://drive.google.com/uc?export=view&id=1Xtb1vXefZX3CdjW5rR5aocs9BjKRMnXk',
                courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9Xd2J3MXJxNDZkTWs',
                buttoncolor: 0xFFFF914D,
                buttontextcolor: 0xff000000,
                accentcolor: 0xffFF3E57,
                title: 'Java Basics',
                overview: 'Learn the basic concepts, tools, and functions that you will eventually use to build both desktop and mobile applications with the popular programming language, Java.\nThis course was designed to teach you the essential Java programming skills you need to get your first programming job, or perhaps a promotion to a more senior position.  And to do it in the shortest possible amount of time.',
                objective: '~ Understand the basic fundamentals of Java\n~ Create Java desktop or web apps\n~ Create Android apps with solid Java knowledge\n~ Build keen foundation of Java Programming language\n~ Build Real World applications using Java',
                source: 'Udemy',
                popularity: 52.4,
                height: 0.5,
                width: 0.9,
              ),

                            
                            Container(height: 30.0, color: Colors.white,),
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
          child: Icon(LineAwesomeIcons.try_icon, color: Colors.white, size: 36.0,),
          tooltip: 'Suggest',
          onPressed: () => launch('https://codera.typeform.com/to/zpqb3S'),
          backgroundColor: Color(gradient1),
          splashColor: Color(gradient2),
        ),
      ),
    );
  }
}
