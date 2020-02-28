import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HackingPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFF000000;
    var gradient2 = 0xFF2e2e2e;
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
                        'Ethical Hacking',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white70
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
                cardimage: 'https://drive.google.com/uc?export=view&id=1Of8xZQ-Yj1nsv6gM8RGdfRVbvxsy_G_Q',
                courseimage: 'https://drive.google.com/uc?export=view&id=1xkIh5GUG3OH3yjxqVMzGxPMlScvFhB8a',
                courselink: 'https://drive.google.com/open?id=1enAyu5mN4ykS-67oC5vkDBbiyeQHuS_t',
                buttoncolor: 0xFF000000,
                buttontextcolor: 0xFFff61f4,
                accentcolor: 0xFFff9100,
                title: 'Complete Ethical Hacking',
                overview: 'Gain the ability to do ethical hacking and penetration testing by taking this course! Get answers from an experienced IT expert to every single question you have related to the learning you do in this course including installing Kali Linux, using VirtualBox, basics of Linux, Tor, Proxychains, VPN, Macchanger, Nmap, cracking wifi, aircrack, DoS attacks, SLL strip, known vulnerabilities, SQL injections, cracking Linux passwords.',
                objective: '~ Answers to every single question you have about ethical hacking and penetration testing from an experienced IT professional!\n~ A guide to using these skills to get a better job and make money online as a freelancer.\n~ A complete tutorial explaining how to build a virtual hacking environment, attack networks, and break passwords.\n~ Tips for remaining anonymous in hacking and penetration testing activities.\n~ The ability to secure and protect any network from hackers and loss of data.\n~ Step by step instructions for insulation VirtualBox and creating your virtual environment on Windows, Mac, and Linux.',
                source: 'Udemy',
                popularity: 79.8,
                height: 0.6,
                width: 0.9,
              ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1gE3q4MOX9MsDclfSrc9tMfG88Ate35pC',
                courseimage: 'https://drive.google.com/uc?export=view&id=15FMZ35yCBiIxg9ilvhqeaYV66sQOwjMT',
                courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XVWtHZGE5U1FZb0U',
                buttoncolor: 0xFF000000,
                buttontextcolor: 0xFFffda05,
                accentcolor: 0xFFff9100,
                title: 'Hacking for Beginners',
                overview: 'This is how this course will guide to into your first hack in two hours!\nYou want to learn hacking but you don\'t know where to start? Then this is the course for you. Hacking for beginners course requires zero experience, zero programming knowledge and zero Linux knowledge.\nWe start with the assumption that you know nothing about hacking, networks or the web. And step by step we will build up your knowledge so you can perform you first hack in two hours.',
                objective: '~ Understand the internet and the components that make it work\n~ What are IP addresses and why they\'re needed for hacking\n~ What is a DNS and how it makes the internet work\n~ What are servers and services and why are needed for hacking\n~ Deep dive into packets\n~ Set up your own lab to practice hacking legally\n~ Get introduced to port scanning and one of the favorite tools for hackers\n~ Understand vulnerability scanning and how you can identify weaknesses\n~ Exploit the weaknesses you find to hack your target.',
                source: 'Udemy',
                popularity: 64.4,
                height: 0.6,
                width: 0.405,
              ),
              CourseCard(
                cardimage: 'https://drive.google.com/uc?export=view&id=1wD7rAwKPLTTtGN1yhdta81hn5o_d5kR8',
                courseimage: 'https://drive.google.com/uc?export=view&id=1A8aAgSJF1Q1VUUUGX91RnLW4Stvm94B4',
                courselink: 'https://drive.google.com/drive/folders/1Y71u46Cy9O6VKo-jeQnLiqN14VjQKkGv?usp=sharing',
                buttoncolor: 0xFFFFC822,
                buttontextcolor: 0xffF44594,
                accentcolor: 0xff9A80F9,
                title: 'Networking & Security',
                overview: 'There are a growing number of exciting, well-paying jobs in today’s security industry that do not require a traditional college degree. Forbes estimates that there will be as many as 3.5 million unfilled positions in the industry worldwide by 2021! One position with a severe shortage of skills is as a junior cybersecurity analyst. This specialization will provide you with the basics you need to get started. Throughout this specialization, you will learn concepts around cybersecurity tools and processes, system administration, operating system and database vulnerabilities, types of cyber attacks and basics of networking. You will also gain knowledge around important topics such as cryptography and digital forensics. This specialization is truly an international offering from IBM with experts from the United States, Costa Rica, Canada and Italy. These instructors are architects, Security Operation Center (SOC) analysts, and distinguished engineers who work with cybersecurity in their day to day lives. They will share their skills which they need to secure its clients security systems.',
                objective: '~ An advanced practical skill-set in assuring network security against all threats including - advanced hackers, trackers, exploit kits, Wi-Fi attacks and much more.\n~ Become a cyber security specialist\n~ Discover security vulnerabilities across an entire network, by using network hacking techniques and vulnerability scanning.\n~ In this volume, we take a detailed look at network security.\n~ The very latest up-to-date information and methods.\n~ You will be able to configure firewalls on all platforms including Windows, MacOS, and Linux for all types of attack scenarios.\n~ We look at search engine privacy - we will best understand how to mitigate the tracking and privacy issues of search engines and their associated services.\n~ What are the best password managers to use and why. How passwords are cracked, and how to mitigate the password attacks.',
                source: 'IT Pro TV',
                popularity: 66.8,
                height: 0.6,
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
          child: Icon(LineAwesomeIcons.try_icon, color: Colors.white70, size: 36.0,),
          tooltip: 'Suggest',
          onPressed: () => launch('https://codera.typeform.com/to/zpqb3S'),
          backgroundColor: Color(gradient1),
          splashColor: Color(gradient2),
        ),
      ),
    );
  }
}
