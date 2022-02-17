import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_ui_designs/pages/route_transition.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

class MyAnimatedSplash extends StatelessWidget {
  const MyAnimatedSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue,
      child: AnimatedSplashScreen(
        splash: Image.asset('assets/images/car2.png',
            height: 400, fit: BoxFit.fill),
        duration: 3000,
        nextScreen: MyRouteTransition(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}
