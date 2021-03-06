import 'package:codera/Segments/books_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:codera/Segments/home_bookshelf.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codera/Cards/bookcard.dart';

class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
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

        Widget _buildListItem(BuildContext context, DocumentSnapshot document){
      return SizedBox(
        height: screenWidth*0.4,
        width: screenWidth*0.3,
              child: BookCard(
          booklink: document['link'],
          cardimage: document['image'],
        ),
      );
    }

    
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: screenWidth*0.013,
                  ),
                  BookShelf(),
                  SizedBox(height: screenHeight * 0.04),
                  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: screenWidth * 0.13),
            Text(
              'All Books',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.02),
        StreamBuilder(
          stream: Firestore.instance.collection('all_books').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return const CircularProgressIndicator();
                    return  GridView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.all(20.0),
                        physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20.0, mainAxisSpacing: 20.0, childAspectRatio: 0.7),
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) => _buildListItem(context, snapshot.data.documents[index]),
                      );
                  }
        ),
        SizedBox(height: screenHeight * 0.04),
                  InkWell(child: Text('Required Book not found? Request Book', style: TextStyle(fontSize: 11.0),), onTap: () => launch('https://codera.typeform.com/to/zpqb3S'),),
                  SizedBox(height: screenHeight * 0.06),
                ],
              )
            ],
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


