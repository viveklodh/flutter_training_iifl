import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatelessWidget {
   ImagePickerExample({Key? key}) : super(key: key);

  File? image;
  Future pickImage() async {
    try {

      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      print(imageTemp.path);

    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image picker"),),
      body: Center(child: ElevatedButton(onPressed: (){
        pickImage();
      },child: Text("pick image"),),),
    );
  }
}
