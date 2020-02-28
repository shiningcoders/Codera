import 'package:flutter/material.dart';

class UnderConstruction extends StatefulWidget {
  @override
  _UnderConstructionState createState() => _UnderConstructionState();
}

class _UnderConstructionState extends State<UnderConstruction> {
    @override
  Widget build(BuildContext context) {
    
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;

    return SafeArea(
            child: Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(margin: EdgeInsets.only(top: 40.0),
                height: screenWidth*0.6,
                width: screenWidth*0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/constructionIcon.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(child: SizedBox(),flex: 2,),
            Text('UNDER CONSTRUCTION!', style: TextStyle(fontSize: screenWidth*0.07)),
            Expanded(child: SizedBox(),),
            Text('Hey, we are doing work here.\nThis page would be available soon.',style: TextStyle(fontSize: screenWidth*0.04), textAlign: TextAlign.center),
            Expanded(child: SizedBox(),flex: 2,),
            _goBackButton(),
            Expanded(child: SizedBox(),flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('This page would be avialble in next update.',style: TextStyle(fontSize: screenWidth*0.03), textAlign: TextAlign.center),
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

  Widget _goBackButton() {
    return FlatButton(
      splashColor: Color(0xFF5F1DFC),
      color: Color(0xFF1D3FFC),
      onPressed: () {
        Navigator.of(context).pop();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                'Keep Learning',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*0.05,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}