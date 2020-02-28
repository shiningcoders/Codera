import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageNotAvailable extends StatefulWidget {
  @override
  _PageNotAvailableState createState() => _PageNotAvailableState();
}

class _PageNotAvailableState extends State<PageNotAvailable> {
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

    
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
      Center(
        child: Container(margin: EdgeInsets.only(top: 40.0),
          height: screenWidth*0.5,
          width: screenWidth*0.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/alienIcon.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Expanded(child: SizedBox(),flex: 2,),
      Text('Hey, you alien!', style: TextStyle(fontSize: screenWidth*0.07)),
      Expanded(child: SizedBox(),),
      Text('Seems you went to my planet.\nLink to your planet will be repaired soon.',style: TextStyle(fontSize: screenWidth*0.04), textAlign: TextAlign.center),
      Expanded(child: SizedBox(),),
      Expanded(child: SizedBox(),flex: 2,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('This page would be available in next update.',style: TextStyle(fontSize: screenWidth*0.03), textAlign: TextAlign.center),
        ],
      ),
      Expanded(child: SizedBox()),
          ],
        ),
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


