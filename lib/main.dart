
import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/pages/ExpandedExample.dart';
import 'package:flutter_training_iifl/pages/ImagePickerExample.dart';
import 'package:flutter_training_iifl/pages/columnExample.dart';
import 'package:flutter_training_iifl/pages/imageExample.dart';
import 'package:flutter_training_iifl/pages/listViewBuilderExample.dart';
import 'package:flutter_training_iifl/pages/naviagtionExample/page1.dart';
import 'package:image_picker/image_picker.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePickerExample(),
    );
  }
}
