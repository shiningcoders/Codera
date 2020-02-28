import 'package:codera/Cards/bookcard.dart';
import 'package:flutter/material.dart';

class BookShelf extends StatefulWidget {
  @override
  _BookShelfState createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;
    return Column(
      children: <Widget>[
        SizedBox(height: screenHeight * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: screenWidth * 0.13),
            Text(
              'Popular Reading List',
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
                  height: screenHeight * 0.35,
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
                          width: screenWidth * 0.08,
                        ),
                        BookCard(
                          //Dark Web
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MNnpjTXN5Y3ZnUDQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1naFwOlEbvAHxDqvGDk8vXlwAqzglzpxD',
                        ),
                        SizedBox(width: screenWidth*0.03,),
                        BookCard(
                          //C++ in a NutShell
                          cardimage: 'https://drive.google.com/uc?export=view&id=1NzWUPRnXqlEQzP4wIqW9ra8AukpgXxan',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MYmVhNjU2YmZONWM',
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        BookCard(
                          //Algorithm Unlocked
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MNnRWb2FwX1AtazQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1c4wgwubN9k2KFdYTcICJGXEApgLN23us',
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        BookCard(
                          //DataStructures Demystified
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MdHlnRDlGSC1Ed0E',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1nRJdHraym7-Y1qU_cjl9gGZrsg8E2lzw',
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        BookCard(
                          //Python 4 Everybody
                          booklink: 'https://drive.google.com/open?id=14_A9t0qeCVWw5Xk0JsIUZS1UGzm1SV3R',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1xDUxvlaIcdgg77KAJjh4OUIhS32qlR1K',
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
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
