import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLBrowser() async {
  const url = "https://www.geeksforgeeks.org/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  const url = 'https://www.geeksforgeeks.org/urls-in-flutter/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, forceSafariVC: true);
  } else {
    throw 'could not launch $url';
  }
}

class MyURL extends StatelessWidget {
  const MyURL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url Browser'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Center(
        child: Column(children: [
          Container(
            height: 250.0,
          ),
          Text('Welecome to gfg!',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              )),
          Container(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: _launchURLBrowser,
            child: Text('open in browser'),
          ),
          Divider(),
          ElevatedButton(onPressed: _launchURLApp, child: Text('open in app')),
        ]),
      )),
    );
  }
}
