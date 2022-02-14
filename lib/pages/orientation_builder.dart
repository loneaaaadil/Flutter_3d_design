import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatelessWidget {
  const MyOrientationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Orientation UI",
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Orientation View'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
            children: List.generate(
                100,
                (index) => Center(
                      child: Text(
                        'A $index',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    )),
          );
        }),
      ),
    );
  }
}
