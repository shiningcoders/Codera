import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDevPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFF00a1ff;
    var gradient2 = 0xFF00ff8f;
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
                        'App Development',
                        style: TextStyle(
                            fontSize: 30.0,
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
                              accentcolor: 0xff020061,
                              buttoncolor: 0xff30ffa5,
                              buttontextcolor: 0xff020061,
                              cardimage: 'https://drive.google.com/uc?export=view&id=1JIlDoavso4MhHqFbcQklN0dZcwYR5TjM',
                              courseimage: 'https://drive.google.com/uc?export=view&id=1tBZM3BnFGEmTY7DgslQ_bnmyINj-0yZF',
                              courselink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MWDhYcnIteVc0V00',
                              width: 0.9,
                              height: 0.7,
                              objective: '~ Learn how to create and run a simple Android app\n~ Create simple layouts for Android\n~ Learn about the Android Studio IDE\n~ Connect to the Internet and communicate with web APIs\n~ Learn about the components that convert a list of data into visual UI elements\n~ Learn how to create Intents that apps outside your control can respond to\n~ Learn how to persist data between orientation and other changes\n~ Allow users to customize some aspects of your app\n~ Learn how Content Providers provide an interface to share data\n~ Understand how architecture components can help you build robust and efficient apps\n~ Create notifications and schedule long-running background processes\n~ Try different layouts, views, viewgroups, and methods of databinding\n~ Use design principles to create apps that look great across multiple form factors',
                              overview: 'Take your Android coding skills to the next level in our free, self-paced Advanced Android Development training. The course uses the Java programming language and teaches you ways to expand the user experience, improve app performance, and add features like custom views, animations, and location-awareness.',
                              popularity: 80,
                              source: 'Udemy, Lynda & O\'Reilly',
                              title: 'Complete Android Development',
                            ),
                            CourseCard(
                            accentcolor: 0xFF36a1ff,
                            buttoncolor: 0xFF1cb3ff,
                            buttontextcolor: 0xff000000,
                            cardimage: 'https://drive.google.com/uc?export=view&id=1-o-insCoGXLW8_FDKBlBYhpJ8kegiShx',
                            courseimage: 'https://drive.google.com/uc?export=view&id=1B5pHIDsQ5l6mO8zuC_8-aM5x7Hvaj-Bw',
                            courselink: 'https://drive.google.com/open?id=13uL1tQwHoRxiKDejOadR3mMVCHxx3PwJ',
                            objective: '~ Understand the fundamentals of the Flutter framework\n~ Incorporate widgets and state into your app\n~ Use Flutter\'s tools to enhance your development process\n~ Customize your app with Material Design, themes, assets, and more\n~ Make your app interactive with text input, gestures, and more\n~ Retrieve local and real-time data from the web\n~ Build your own Real world Application\n~ Other Apps examples & Features',
                            overview: 'In this course, you\'ll learn how to use Flutter to quickly develop high-quality, interactive mobile applications for iOS and Android devices. Whether you\’re just getting started with mobile app development, or experienced with other mobile app frameworks, you\’ll enjoy the high-velocity development and quality apps that Flutter enables. Learn how to develop fast by making use of Flutter\'s reactive framework, stateful Hot Reload, and integrated tooling. Customize your app with rich, composable widgets, built-in animations, and a layered, extensible architecture.\n\nAfter completing this course you would be able to make any app for Android, iOS, Website and Desktop(Beta).',
                            source: 'Udemy',
                            title: 'Complete Flutter App Development',
                            height: 0.55,
                            popularity: 60,
                            width: 0.405,
                            ),
                            CourseCard(
                              accentcolor: 0xff000949,
                              buttoncolor: 0xffff7824,
                              buttontextcolor: 0xff000949,
                              cardimage: 'https://drive.google.com/uc?export=view&id=1hwtznRaCc65uuXCcb6pYyM74DT29WAB_',
                              courseimage: 'https://drive.google.com/uc?export=view&id=1202kV4aLM14Mfu180Bqv-84c65B2mOMx',
                              courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XUlBZQThMYU5pSUk',
                              width: 0.405,
                              height: 0.55,
                              objective: '~ How to get started with app development and create your very first iOS app\n~ How to utilise the Apple developer tools (Xcode, Instruments, debugger, analyzer, and iOS Simulator) to build your app\n~ How to implement a range of features using the Swift programming language\n~ How to distinguish well-written code from poorly-written code and follow programming best practices in Swift\n~ The process and steps required to get your app on the App Store',
                              overview: 'In this Professional program you will learn the tools, techniques and concepts needed to build a basic iOS app, from scratch.\nFind out how to program in Swift and utilise the iOS Software Development Kit (SDK) and Apple developer tools (Xcode, debugger, analyzer and iOS Simulator) to create mobile apps which can be sold via the App Store.\n\nIn each course you will work through a range of lessons and projects which will focus on Swift programming and teach you about various aspects of app development. These lessons will provide you with the practical, hands-on skills needed to embark on a career in app development\n\nIn addition, a number of app development companies will share their experiences in building and developing apps so you can find out what it really takes to turn your brilliant idea into a functioning product.',
                              popularity: 48.6,
                              source: 'Udemy',
                              title: 'App Development with Swift',
                            ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1XNOpSpxAsfK5whbF2DK3ar1cl-NJ_m-G',
                courseimage: 'https://drive.google.com/uc?export=view&id=1czekExpmgGsthOAARMmC04uSWf0aFKOp',
                courselink: 'https://drive.google.com/open?id=1GVgXNFnbolos08y1a2niRQ_Add1itCsE',
                buttoncolor: 0xFF8C52FF,
                buttontextcolor: 0xffFFDE59,
                accentcolor: 0xffDD88F9,
                title: 'Kotlin for Android Development',
                overview: 'This course is all about devloping android apps with the use of Kotlin language, which is announced as official language by google for android development. Learn to architect and develop Android apps in the Kotlin programming language using industry-proven tools and libraries. With these techniques you\'ll create apps in less time, writing less code, and with fewer errors. This course demonstrates how to take a basic Android app in Java and convert it to Kotlin, teaching you key features of the Kotlin programming language along the way. This is an efficient, fast-paced introduction to Kotlin for experienced Java programmers.',
                objective: '~ Explore the basics of Android, such as creating text, images, and interactive buttons\n~ Set up the development environment and create a Dice Roller Android app\n~ Navigate the Main Map Anatomy of an Android app\n~ Learn different kinds of views and resources\n~ Explore arranging elements with the Android Studio\'s Layout Editor\n~ Connect views with data through data binding\n~ Learn how to build apps that contain multiple screens known as destinations\n~ Debug common issues through an understanding of lifecycles\n~ Learn one way to structure an Android app and the benefits that come with this design',
                source: 'Udemy',
                popularity: 72.4,
                height: 0.6,
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
