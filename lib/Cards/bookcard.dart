import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookCard extends StatelessWidget {

  BookCard({
  @required this.cardimage, 
  @required this.booklink, 
  });
  var cardimage;
  var booklink;
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;
    return Container(
        height: screenWidth * 0.6,
        width: screenWidth * 0.4,
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
      onTap: () => launch(booklink),
        ),
      );
  }
}
