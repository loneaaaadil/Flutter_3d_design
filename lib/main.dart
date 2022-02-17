// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import "package:expansion_tile_card/expansion_tile_card.dart";
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/pages/animated_splash.dart';
import 'package:flutter_ui_designs/pages/google_fonts.dart';
import 'package:flutter_ui_designs/pages/hero_animation.dart';
import 'package:flutter_ui_designs/pages/hinge_animation.dart';
import 'package:flutter_ui_designs/pages/lazy_loader.dart';
import 'package:flutter_ui_designs/pages/lottie_animation.dart';
import 'package:flutter_ui_designs/pages/orientation_builder.dart';
import 'package:flutter_ui_designs/pages/physics_card_animation.dart';
import 'package:flutter_ui_designs/pages/route_transition.dart';
import 'package:flutter_ui_designs/pages/sketlon_text.dart';
import 'package:flutter_ui_designs/pages/splash.dart';
import 'package:flutter_ui_designs/pages/themes.dart';

/*
WELCOME TO MY FLUTTER JOURNEY BY LONE AADIL
Instagram: Lone_aadil_official
Btech CSE
Whatsapp :7006246463

*/
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PhysicsAnimation(),
  ));
}

class GeekForGeeks extends StatelessWidget {
  static const String _title = 'Drawer Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyStatefulWidget(),
      home: Scaffold(
        backgroundColor: Colors.grey,
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  "GeeksforGeeks",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text('People'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text("Email Id"),
                leading: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Inbox"),
                leading: Icon(Icons.inbox),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Hello aadil',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.green,
          elevation: 30.0,
          shadowColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: "Commet Icon",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              tooltip: "setting Icon",
            ),
          ],
        ),
        body: Container(
          height: 160,
          width: double.infinity,
          // color: Colors.purple,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(30),
          alignment: Alignment.bottomCenter,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Center(
            child: RichText(
              text: const TextSpan(
                text: "Hello! Aadil",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: " Ahmad lone",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " Google",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          tooltip: "floating icon",
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Bussiness',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello aadil'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.green,
        elevation: 30.0,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.rectangle),
              child: Text(
                'Drawer header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 30,
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
// Demo Tabs

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("hello Aadil"),
            backgroundColor: Colors.green[30],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.music_note),
              Icon(Icons.music_video),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
              Icon(Icons.email),
            ],
          ),
        ),
      ),
    );
  }
}

//Hortizonal list
class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  final title = 'Hello Aadil';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.orange,
            ),
            onPressed: () {},
            tooltip: "i am menu",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.orange,
              ),
              tooltip: "i am settings",
            ),
          ],
          elevation: 30.0,
          shadowColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.green,
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 700.0,
          child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
            Container(
              height: 480.0,
              width: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHx8MHx8&w=1000&q=80"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              height: 480.0,
              width: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1545743/pexels-photo-1545743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              height: 480.0,
              width: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://wallpaperaccess.com/full/184117.jpg',
                  ),
                ),
                shape: BoxShape.rectangle,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

//Expansion tile
class ExpansionTileCard1 extends StatelessWidget {
  const ExpansionTileCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpansionTileCard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Hello aadil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              borderRadius: BorderRadius.circular(20),
              baseColor: Colors.pink,
              expandedColor: Colors.blue,
              // animateTrailing: true,
              // initiallyExpanded: true,
              key: cardB,
              leading: CircleAvatar(
                child: Icon(
                  Icons.verified_user,
                ),
              ),
              title: Text('Tap to expand !'),
              subtitle: Text('It has the CFG Logo1 .'),
              children: [
                Divider(
                  color: Colors.blue,
                  thickness: 12.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Image.asset('assets/images/car.jpg'),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
            height: 1.0,
            color: Colors.lightBlue,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              borderRadius: BorderRadius.circular(20),
              baseColor: Colors.pink,
              expandedColor: Color.fromARGB(255, 100, 169, 226),
              // animateTrailing: true,
              key: cardA,
              leading: CircleAvatar(
                child: Icon(Icons.verified_user),
              ),
              title: Text('tap to expand 2'),
              subtitle: Text('It has the cfg logo 2'),
              children: [
                Divider(
                  color: Colors.blue,
                  thickness: 12.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Image.asset('assets/images/lollipop.jpg')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice Page',
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            children: [
              /*
              SHOW DIALOG 

              */
              // showDialog(
              //   context: context,
              //  builder: (BuildContext context){
              //    return Expanded(
              //      child: AlertDialog(
              //        title: Text('Welcome'),
              //        content: Text('GeeksForGeeks'),
              //        actions: [
              //          FlatButton(
              //            textColor: Colors.black,
              //            onPressed: (){},
              //           child: Text('CANCEL'),
              //           ),
              //           FlatButton(
              //             textColor: Colors.black,
              //             onPressed: (){},
              //            child: Text('ACCEPT'),
              //            ),
              //        ],
              //        ),
              //        );
              //  }
              //  );
              /* 
              SIMPLE ALERT DIALOG 
               */
              // SimpleDialog(
              //   title: Text('GeeksforGeeks'),
              //   children: [
              //     SimpleDialogOption(
              //       onPressed: () {},
              //       child: Text('Option 1'),
              //     ),
              //     SimpleDialogOption(
              //       onPressed: () {},
              //       child: Text('option 2'),
              //     ),
              //   ],
              // ),
              /*
              ALERT DIALOG CODE
              */
              // AlertDialog(
              //   title: Text('Welcome'),
              //   content: Text('Geeks for Geeks'),
              //   actions: [
              //     FlatButton(
              //         textColor: Colors.black,
              //         onPressed: () {},
              //         child: Text('CANCEL')),
              //     FlatButton(
              //       textColor: Colors.black,
              //       onPressed: () {},
              //       child: Text('ACCEPT'),
              //     )
              //   ],
              // ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/car.jpg'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/lollipop.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
MY PROGRESS INDICATOR CODE
*/
class MyProgressIndigator extends StatelessWidget {
  const MyProgressIndigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello AADI'),
            backgroundColor: Color.fromARGB(255, 57, 167, 167),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  backgroundColor: Colors.redAccent,
                  value: 0.3,
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                  strokeWidth: 10,
                ),
                SizedBox(
                  height: 25,
                ),
                LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: Colors.redAccent,
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                  minHeight: 20,
                ),
              ],
            ),
          ),
        ));
  }
}

/*
Staggered grid view code
first add the depenceny in pupspec.yaml
*/
class MyStaggeredGridView extends StatelessWidget {
  const MyStaggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello grid'),
          centerTitle: true,
        ),
        body: Container(
          height: 720.0,
          color: Colors.red,
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 4,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    'https://picsum.photos/seed/image019/500/800',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.network(
                    'https://picsum.photos/seed/image018/500/900',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.network(
                    'https://picsum.photos/seed/image017/500/600',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.network(
                    'https://picsum.photos/seed/image016/500/700',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.network(
                    'https://picsum.photos/seed/image015/500/500',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
