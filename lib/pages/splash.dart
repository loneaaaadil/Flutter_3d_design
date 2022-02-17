import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/pages/route_transition.dart';

class MySplash extends StatefulWidget {
  const MySplash({ Key? key }) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}
class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => MyRouteTransition())));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset('assets/images/car.jpg'),
      ),
    );
  }
}