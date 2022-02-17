import 'package:flutter/material.dart';
import 'dart:math';

class MyHingeAnimation extends StatefulWidget {
  const MyHingeAnimation({Key? key}) : super(key: key);

  @override
  _MyHingeAnimationState createState() => _MyHingeAnimationState();
}

class _MyHingeAnimationState extends State<MyHingeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    _rotationAnimation = Tween(end: 0.15, begin: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.bounceInOut)));
    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        automaticallyImplyLeading: false,
        title: Text('Lone Aadil'),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (BuildContext context, child) => Container(
          width: 200,
          height: 150,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(
            left: 100,
            top: _slideAnimation.value,
          ),
          child: RotationTransition(
            turns: _rotationAnimation,
            child:Text(
                  'Aadil ahmad lone',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(
                          300, 150, 500, _opacityAnimation.value),
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.green[300],
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
