import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class MyLazyLoader extends StatefulWidget {
  const MyLazyLoader({Key? key}) : super(key: key);

  @override
  _MyLazyLoaderState createState() => _MyLazyLoaderState();
}

class _MyLazyLoaderState extends State<MyLazyLoader> {
  List<int> data = [];
  int currentLength = 0;
  final int increment = 3;
  bool isLoading = false;
  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });
    await new Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i <= currentLength + increment; i++) {
      data.add(i);
    }
    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lazy Loader app",
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          actions: [
            Container(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.camera),
            ),
          ],
          shadowColor: Colors.transparent,
          title: Text("lazy loader"),
          backgroundColor: Colors.green,
        ),
        body: LazyLoadScrollView(
          isLoading: isLoading,
          onEndOfPage: () => _loadMore(),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, position) {
              return DemoItem(position: position);
            },
          ),
        ),
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final int position;

  const DemoItem({Key? key, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange,
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(width: 8.0),
                Text("Item $position"),
              ],
            ),
            Text(
                "i love to work with flutter and one day i will be a good developer"),
          ],
        ),
      ),
    );
  }
}
