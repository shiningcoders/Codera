import 'package:codera/Cards/coursecard.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CloudCompPathPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var gradient1 = 0xFF9945ff;
    var gradient2 = 0xFF2969ff;
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
                        'Cloud Computing',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
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
                              accentcolor: 0xff000444,
                              buttoncolor: 0xff2672ff,
                              buttontextcolor: 0xfffff833,
                              cardimage: 'https://drive.google.com/uc?export=view&id=1aiOL5UgJS5_QY3jY48JlRUdvTUNjY_Y8',
                              courseimage: 'https://drive.google.com/uc?export=view&id=1xKpmB-i6lBbo5B1A30VdAtfABcFljJIS',
                              courselink: 'https://drive.google.com/open?id=0B1jVKZdy3nxaY3h2bFpQbU1La1k',
                              width: 0.9,
                              height: 0.7,
                              objective: '~ Managing Azure subscriptions and access control\n~ Deploying and organizing Azure resources\n~ Implementing, managing, and securing storage\n~ Building, managing, and executing Virtual Machines\n~ Integrating, securing, and managing identities\n~ Configuration and use case implementation of Virtual Networks\n~ Azure Site Recovery\n~ Implementing multi-factor Authentication',
                              overview: 'Azure Solutions Architect is designed to help you prepare for the Microsoft Azure Architect Technologies Exam – Part of Azure Solutions Architect Badge (Expert-level). You will be able you to implement advanced networking configurations, plan authentication and security of the infrastructure, use PaaS solutions and Storage Services to deploy end-to-end cloud solutions.',
                              popularity: 40,
                              source: 'CBT Nuggets',
                              title: 'Cloud Computing with Azure',
                            ),
                            CourseCard(
                            accentcolor: 0xFF36a1ff,
                            buttoncolor: 0xFFffb217,
                            buttontextcolor: 0xff000659,
                            cardimage: 'https://drive.google.com/uc?export=view&id=1YmYopofXtS-4kAnwN0ToBDUbT6G4kaZT',
                            courseimage: 'https://drive.google.com/uc?export=view&id=15c05U5VUvaGmZVOo5k6b_bXewe1Bvg_U',
                            courselink: 'https://drive.google.com/open?id=0B1HQDi7EkA9XdWk2TlNmU2RBYnM',
                            objective: '~ Pass the AWS Certified Developer - Associate 2020 Exam\n~ Become intimately familiar with the AWS platform from a developer perspective.\n~ Become A Cloud Guru\n~ Become confident in creating basic Python and PHP code to manipulate AWS environments\n~ Become Amazon Certified',
                            overview: 'Amazon Web Services - (AWS) Certification is fast becoming the must have certificate for any IT professional working with AWS. This course is designed to help you pass the AWS Certified Developer Associate (CDA) 2020 Exam. Even if you have never logged in to the AWS platform before, by the end of our AWS training videos you will be able to take the CDA exam. No specific programming knowledge is needed (though knowing a language would be advantageous) and no prior AWS experience required. With AWS certification under your belt (and optionally after completing our AWS Certified Solutions Architect course - also available on Udemy), you will be in high demand by many employers and will command a superior salary.',
                            source: 'Udemy',
                            title: 'AWS Developer Associate',
                            height: 0.7,
                            popularity: 58,
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
