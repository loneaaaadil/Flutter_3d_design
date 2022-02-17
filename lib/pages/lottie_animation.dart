import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  _LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lottie animation"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_qX4zwY.json',
                height: 200.0,
                repeat: true,
                reverse: true,
                animate: true,
              ),
              Lottie.network(
                'https://assets1.lottiefiles.com/private_files/lf30_yQtj4O.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
              Lottie.network(
                'https://assets4.lottiefiles.com/private_files/lf30_kvrbety7.json',
                reverse: true,
                repeat: true,
                animate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
