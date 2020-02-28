import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebDevPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFFfcb130;
    var gradient2 = 0xFFff1275;
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
                        'Web Development',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70,
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
                cardimage: 'https://drive.google.com/uc?export=view&id=1z5eTNZJQ-MWq-hhGLJbMqFhY5ngqHPYD',
                courseimage: 'https://drive.google.com/uc?export=view&id=1Tt9_eeJ8oIsJ_90p2hFGq0Zjyv5jqMwY',
                courselink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MUzJkLVFSR0pTUHM',
                buttoncolor: 0xFF00FFBA,
                buttontextcolor: 0xffF81D92,
                accentcolor: 0xff9B46C0,
                title: 'Front End Web Development',
                overview: 'This course covers the most popular web development frameworks, and will get you started on your path towards becoming a full-stack web developer!\n\nIf you would like to get started as a front-end web developer, you are going to LOVE this course! Work on projects ranging from a simple HTML page to a complete JavaScript based Google Chrome extension. We will cover the following technologies in this course:\n\n~ Web development basics with HTML\n~ Cascading Style Sheets (CSS)\n~ JavaScript programming\n~ jQuery JavaScript library\n~ Bootstrap framework',
                objective: '~ Build a simple HTML text site\n~ Program websites with JavaScript\n~ Build and publish a Google Chrome Extension\n~ Style web pages using CSS & SASS\n~ Build complete Web Project',
                source: 'Team TreeHouse',
                popularity: 76.66,
                height: 0.6,
                width: 0.9,
              ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1L_2lQTm_sq_Y6JJgjI1WtJIxhEMDw-SL',
                courseimage: 'https://drive.google.com/uc?export=view&id=1V_Cdq1rJ4cxUO2nWuZk_B_LqLjcOlR-4',
                courselink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MbExXU3JXZWNZZGM',
                buttoncolor: 0xFFFDD755,
                buttontextcolor: 0xff255EFD,
                accentcolor: 0xffFA836D,
                title: 'Complete PHP',
                overview: 'One of the most powerful server-scripting languages requires an equally powerful course to help break down the tricky concepts of Object Oriented PHP in a step by step manner to help you master OOP PHP.\nThis course was designed to simplify the process of understanding OOP PHP in the easiest and most accurate manner. The OOP PHP tutorial breaks down the basics of PHP coding, how it works with OOP and even how to combine both to effectively create a website.\nThe course starts by covering simple concepts such as classes, objects, methods, properties, MVC, MySQL, Data Abstraction, Data Binding, etc. Following the fundamentals, you’ll then progress on to more advanced topics before you can use everything you’ve learned to create a functional website with OOP PHP.\nHere’s a course that simplifies your life and teaches you one of the greatest paradigm changes made to the powerful PHP language. So, enroll now and see how OOP PHP can change your life.',
                objective: '~ Build a complete website using classes and objects in PHP\n~ Learn all about Abstraction and Inheritance\n~ Understand the concepts behind object oriented PHP\n~ Learn how to deal with RDBMS within OOPS framework',
                source: 'Udemy',
                popularity: 60.4,
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
                cardimage: 'https://drive.google.com/uc?export=view&id=17ke06xtAliQK2o_l8O1-1yBWzShrHC_L',
                courseimage: 'https://drive.google.com/uc?export=view&id=1gmSdn4Qs-_6Qqko9RIKMZcJK76XTN_Ug',
                courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XeHpLNlhWSkt2X2s',
                buttoncolor: 0xFF37004D,
                buttontextcolor: 0xffE1F82D,
                accentcolor: 0xff2CCFB3,
                title: 'Complete HTML',
                overview: 'HTML5 is one of the hot web technologies and is widely gaining acceptance across mobile and web. In our course you get a complete resource which can get you started on application development for HTML5. In our course you work on actual examples and go through important concepts required for through knowledge. In our course you will start with basic HTML tags. You will learn how to create HTML websites and use CSS in your work before we start discussing HTML5. We do not assume any prior knowledge so we go through the concepts from the beginner\'s point of view. In our HTML5 lectures we start with new tags and forms. We then gradually move to advance topics like Drag and Drop and Multimedia. We follow it with difficult topics like Geolocation, WebStorage and Application cache. This course creates easy to grasp examples for each of the concepts and by the end of it you will be able to understand the complete picture rather than just bits and pieces of the technology.',
                objective: '~ By the end of the course you will be able to create full fledged HTML5 websites\n~ You will have through understanding of both HTML and CSS\n~ You will be able to use features like Drag and Drop, Geo location and Web Storage to create immersible user experience.\n~ You will be able to create web applications for mobile phones as well',
                source: 'Udemy',
                popularity: 60.4,
                height: 0.4,
                width: 0.405,
              ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1_NZWMbA2NK-ll8v_QNKi426G1K31HUrO',
                courseimage: 'https://drive.google.com/uc?export=view&id=1cjlfM1l5o9XftblG5TKsYjBtPmO_A2tC',
                courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XOVpPZFd0RW83bk0',
                buttoncolor: 0xFFFF7EDB,
                buttontextcolor: 0xffF1E6B7,
                accentcolor: 0xff99B5FF,
                title: 'Mordern Designing with CSS',
                overview: 'This course is for both beginners and seasoned developers that want to learn how to build responsive websites and user interfaces with modern HTML5 and CSS3+ technologies like Flexbox and CSS Grid as well as the Sass pre-compiler. This course includes hours of both learning & studying sections along with real life projects. Stop having to rely on frameworks like Bootstrap for your user interface and learn how to create your own layouts and utility classes to build custom responsive websites and app UIs.\n\nThe first few sections are tailored for beginners so even if you have never built anything before, you will learn all of the basics. If you already have experience with basic HTML & CSS, just move to section 3 or 4 and get started.',
                objective: '~ Build Multiple High Quality Website & UI Projects\n~ Flexbox & CSS Grid Projects\n~ Website Hosting & Deployment With FTP & Git\n~ HTML5 Semantic Layout & CSS Fundamentals\n~ CSS Variables, Transitions, Dropdowns, Overlays & More',
                source: 'Udemy',
                popularity: 60.4,
                height: 0.4,
                width: 0.405,
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
          child: Icon(LineAwesomeIcons.try_icon, color: Colors.black54, size: 36.0,),
          tooltip: 'Suggest',
          onPressed: () => launch('https://codera.typeform.com/to/zpqb3S'),
          backgroundColor: Color(gradient1),
          splashColor: Color(gradient2),
        ),
      ),
    );
  }
}
