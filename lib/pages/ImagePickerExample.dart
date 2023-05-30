import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  ImagePickerExample({Key? key}) : super(key: key);

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? image;

  File? imageFile;

  Future pickImageFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      imageFile = File(image.path);
      setState(() {});
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      imageFile = File(image.path);

      setState(() {});
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageFile == null
                ? CircularProgressIndicator()
                : Image.file(
                    imageFile!,
                    height: 100,
                    width: 200,
                  ),
            ElevatedButton(
              onPressed: () {
                pickImageFromCamera();
              },
              child: Text("pick image from camera"),
            ),
            ElevatedButton(
              onPressed: () {
                pickImageFromGallery();
              },
              child: Text("pick image from gallery"),
            ),
          ],
        ),
      ),
    );
  }
}
