import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MySkeltonText extends StatelessWidget {
  const MySkeltonText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Skelton text'),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Color.fromARGB(179, 199, 86, 86)),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SkeletonAnimation(
                          child: Container(
                            child: Image.asset(
                              'assets/images/car.jpg',
                              fit: BoxFit.fill,
                            ),
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromARGB(255, 102, 197, 235),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15.0,
                                bottom: 5.0,
                              ),
                              child: SkeletonAnimation(
                                  child: Container(
                                height: 15,
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.green,
                                ),
                              )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 55.0),
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: SkeletonAnimation(
                                  child: Container(
                                    width: 80,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.pink,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
