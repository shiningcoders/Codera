import 'package:codera/Cards/bookcard.dart';
import 'package:flutter/material.dart';

class AllBooks extends StatefulWidget {
  @override
  _AllBooksState createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenHeight = queryData.size.height;
    var screenWidth = queryData.size.width;
    return 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: screenHeight * 0.035),
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
        SizedBox(height: screenHeight * 0.045),
        Wrap(
          direction: Axis.horizontal,
          spacing: 15.0,
          runSpacing: 15.0,
          children: <Widget>[
                        BookCard(
                          //C++ in a NutShell
                          cardimage: 'https://drive.google.com/uc?export=view&id=1NzWUPRnXqlEQzP4wIqW9ra8AukpgXxan',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MYmVhNjU2YmZONWM',
                        ),
                          BookCard(
                          //Thoughtful Machine Learning
                          cardimage: 'https://drive.google.com/uc?export=view&id=1h-kzpbbY2l-3YxIvooKqxBxG9uSBjcdZ',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MME13MU00MGVNUVE',
                        ),
                        BookCard(
                          //Headfirst Wordpress
                          cardimage: 'https://drive.google.com/uc?export=view&id=1dxUAquu9a5c2uByKd12rYyPrmRy3gk7t',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MdDZfSlhiLVVMQWs',
                        ),
                        BookCard(
                          //C in a Nutshell
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_Mek90ZEZ0dWRHZzQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1EJ0VW9giXESO5AkKRQRpqc7w9rRn3QNO',
                        ),
                          BookCard(
                          //Python 4 Everybody
                          booklink: 'https://drive.google.com/open?id=14_A9t0qeCVWw5Xk0JsIUZS1UGzm1SV3R',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1xDUxvlaIcdgg77KAJjh4OUIhS32qlR1K',
                        ),
                        BookCard(
                          //Introduction to Algorithms
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MNEpLRzE1SklSWW8',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1wMn1NZh2h3GRoj7CKvpoSEMbEYhUdWOx',
                        ),
                        BookCard(
                          //Open Data Structures
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MRlBORzhUUjhMdnM',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1uD431su1ZZjverSnD1rlEnoE_Ic3lBg7',
                        ),
                        BookCard(
                          //Social Big Data Mining
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MTHhPVENPaDNwZG8',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1VAVuG8IRN5_d5vFtNJtBdAMOah52OfZ1',
                        ),
                        BookCard(
                          //Light Weight Django
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MSTlUbHpFeGtTMUU',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1iLrPk62648gSOAAHDLJm68hYJJDSZtXQ',
                        ),
                        BookCard(
                          //Introducing Elixir
                          cardimage: 'https://drive.google.com/uc?export=view&id=1riTniiEPLIQYJ5KCrCL9XKjPrYL1fGtT',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MUURzSmp3dXdLNDA',
                        ),
                        BookCard(
                          //Pro Android
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MQzhoNERhMmNTOUk',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1xjZSsblyBTt1xpX4sVl8MRyonYBLEw0t',
                        ),
                        BookCard(
                          //Algorithms
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MQ1dOZTV4XzQtMkk',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1UB1FQ_9OVs09jLHBns9TOyJ_MSCXYrHL',
                        ),
                        BookCard(
                          //DataStructures Demystified
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MdHlnRDlGSC1Ed0E',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1nRJdHraym7-Y1qU_cjl9gGZrsg8E2lzw',
                        ),
                        BookCard(
                          //Dark Web
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MNnpjTXN5Y3ZnUDQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1naFwOlEbvAHxDqvGDk8vXlwAqzglzpxD',
                        ),
                            BookCard(
                          //Algorithm Unlocked
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MNnRWb2FwX1AtazQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1c4wgwubN9k2KFdYTcICJGXEApgLN23us',
                        ),
                        BookCard(
                          //Beginning Android
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MTGIxNVVKRm4tMWc',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1Sm7Gq3o_xIDdg_FUw0fZMI3_8M7HzcFD',
                        ),
                        BookCard(
                          //The way to GO
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MVk5zZ2U2bGlEVjQ',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1Tfq6Asguc2R6SBwdQi8gBS8gIhzHJ1-l',
                        ),
                        BookCard(
                          //JavaScript Demystified
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MQWNxOThJbVU3QmM',
                          cardimage: 'https://drive.google.com/uc?export=view&id=19uoVyh2KePyS08ykcixmJqCP07lMR1zV',
                        ),
                        BookCard(
                          //Mathematica Demystified
                          cardimage: 'https://drive.google.com/uc?export=view&id=1no2xaj55juTbKJHs5g1kU5N7Ulg_FQN3',
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MMkV2VHhzSzBJM2c',
                        ),
                        BookCard(
                          //Cryptography in C & C++
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MWUdYTGFyVVFnRHM',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1MnUNRrWg7wvOSVgcK7g07K4WFU73PDfx',
                        ),
                        BookCard(
                          //MySQL Cookbook
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MME9aanpHUmNBZ0U',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1ZtjnGVpke7-ZLodT12oVlIsmMoE3_2r5',
                        ),
                        BookCard(
                          //The GO programming language
                          booklink: 'https://drive.google.com/open?id=0ByWO0aO1eI_MWm1xalk4am0zcmc',
                          cardimage: 'https://drive.google.com/uc?export=view&id=1GeFsNNUTGkloaa-HEefGJu-ZlzVK90eX',
                        ),
          ],
        ),
      ],
    );
  }
}
