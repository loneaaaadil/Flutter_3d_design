import 'package:flutter/material.dart';

class MyGoogleFonts extends StatelessWidget {
  const MyGoogleFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Fonts'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(40),
            color: Colors.blueGrey,
            child: Text(
              'Welcome to google fonts',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
