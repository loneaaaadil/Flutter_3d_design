
import 'dart:html';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

 
 class GalleryAccess extends StatefulWidget {
   const GalleryAccess({ Key? key }) : super(key: key);
 
   @override
   _GalleryAccessState createState() => _GalleryAccessState();
 }
 
 class _GalleryAccessState extends State<GalleryAccess> {
   
  late File galleryFile ;

  
  //  late File _galleryFile ;
  // final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
   imageSelectorGallery() async {
        galleryFile = ImagePicker.pickImage(source: ImageSource.gallery) as File ;
      setState(() {});
    }

    // ignore: unnecessary_ne
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Gallery Access'),
        backgroundColor: Colors.green,
        actions: [
          Text(
            'GFG',
            textScaleFactor: 3,
          )
        ],
      ),
      // ignore: unnecessary_new
      body: new Builder(
        builder: (BuildContext context) {
          
          return Center(
            // ignore: unnecessary_new
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new RaisedButton(
                  onPressed: imageSelectorGallery,
                  child: new Text('Select Image from gallery'),
                ),
                SizedBox(
                  height: 200.0,
                  width: 300.0,
                  child: galleryFile == null
                      ? Center(
                          child: Text('Sorry nothing selected!!'),
                        )
                      : Center(
                          child: Image.file(galleryFile),
                        ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
