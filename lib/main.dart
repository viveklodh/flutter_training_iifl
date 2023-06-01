
import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/pages/ExpandedExample.dart';
import 'package:flutter_training_iifl/pages/ImagePickerExample.dart';
import 'package:flutter_training_iifl/pages/columnExample.dart';
import 'package:flutter_training_iifl/pages/dicee.dart';
import 'package:flutter_training_iifl/pages/hive_database/hiveDbExample.dart';
import 'package:flutter_training_iifl/pages/imageExample.dart';
import 'package:flutter_training_iifl/pages/listViewBuilderExample.dart';
import 'package:flutter_training_iifl/pages/naviagtionExample/page1.dart';
import 'package:flutter_training_iifl/pages/page_transition/screen1.dart';
import 'package:flutter_training_iifl/pages/singleDiceExample/diceApp.dart';
import 'package:flutter_training_iifl/pages/tabbar/tabBarExample.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox'); //
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dicee(),
    );
  }
}
