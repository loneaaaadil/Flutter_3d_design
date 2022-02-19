import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<Album> fetchAlbum() async {
  String url1='https://jsonplaceholder.typicode.com/albums/1';
  final response= await http.get(
    Uri.http(url1, '')
  );
  if (response.statusCode==200) {
    return Album.fromJson(json.decode(response.body));
    
  } else {
    throw Exception('Loading album failed');
  }
}
Future<Album> updateAlbum(String title) async{
  String url1='https://jsonplaceholder.typicode.com/albums/1';
  final http.Response response=await http.put(
    Uri.http(url1, ''),
  
    headers: <String, String>{
    'content-Type': 'application/json ; charset=UTF-8',
  },
  body: jsonEncode(<String,String>{
    'title':title,
  }),
  );

if (response.statusCode==200) {
  return Album.fromJson(json.decode(response.body));
} else {
  throw Exception('Failed to update the album!');
}
}
class Album {
  final int id;
  final String title;
  Album({
    required this.id,required this.title
  });

  factory Album.fromJson(Map<String, dynamic>json){
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}
class MyWebSocket extends StatefulWidget {
  const MyWebSocket({ Key? key }) : super(key: key);

  @override
  _MyWebSocketState createState() => _MyWebSocketState();
}

class _MyWebSocketState extends State<MyWebSocket> {

  final TextEditingController _controller=TextEditingController();
   late Future<Album> _futureAlbum;
  @override
  void initState() {
    
    super.initState();
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Socket App'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: FutureBuilder<Album>(
          future: _futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState==ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(snapshot.data!.title),
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'Enter Title'),
                    ),
                    ElevatedButton(
                      onPressed: (){
                         setState(() {
                         _futureAlbum=updateAlbum(_controller.text);
                       });
                      },
                       child: Text('Update Date'),
                      
                       )
                  ],
                );
              }
              else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
            }
            return CircularProgressIndicator();
          }
          )
          ),
      );
  }
}

