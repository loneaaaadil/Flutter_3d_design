import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyThemes extends StatelessWidget {
  const MyThemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Themes",
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.green,
        primaryColor: Colors.green,
        accentColor: Colors.deepOrangeAccent,
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Pacifico'),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets MAke a Theme'),
        ),
        body: Center(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text(
              'Hello Aadil',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
          ),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.arrow_circle_up),
          ),
        ),
      ),
    );
  }
}
