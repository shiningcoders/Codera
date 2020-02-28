import 'package:codera/Pages/coursepage.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {

  CourseCard({
  @required this.cardimage, 
  @required this.courselink, 
  @required this.overview,
  @required this.title,
  @required this.source,
  @required this.buttoncolor,
  @required this.accentcolor,
  @required this.objective,
  @required this.courseimage,
  @required this.buttontextcolor,
  @required this.popularity,
  @required this.height,
  @required this.width,
  });
  var cardimage;
  var courselink;
  var courseimage;
  var buttoncolor;
  var accentcolor;
  var source;
  var buttontextcolor;
  var title;
  var overview;
  double popularity;
  double height;
  double width;
  var objective;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;
    return Container(
        height: screenWidth * height,
        width: screenWidth * width,
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.black12,
        ),
        child: GestureDetector(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            cardimage,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Color(0xFF1D3FFC)),
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },
          )),
      onTap: () {
        Navigator.push<Widget>(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => CoursePage(
                  courselink: courselink,
                  imagelink: courseimage,
                  accentcolor: accentcolor,
                  buttoncolor: buttoncolor,
                  source: source,
                  title: title,
                  buttontextcolor: buttontextcolor,
                  objective: objective,
                  overview: overview,
                  popularity: popularity,
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
      },
      ),
      );
  }
}