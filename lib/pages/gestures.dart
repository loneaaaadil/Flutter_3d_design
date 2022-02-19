import 'package:flutter/material.dart';


class MyGestures  extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Gestures'),
        backgroundColor:Colors.green,

      ),
      body: Center(child: MyButton()),
    );
  }
}
class MyButton extends StatelessWidget {
  const MyButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar=SnackBar(content: const Text('you just tapped on button'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('tap button'),
      ), 
    );
  }
}