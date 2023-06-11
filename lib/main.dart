
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
import 'package:flutter_training_iifl/weather_api/weather_app.dart';

import 'package:flutter/material.dart';

import 'Responsive_example/desktop_screen.dart';
import 'Responsive_example/layout/responsive_layout.dart';
import 'Responsive_example/mobile_screen.dart';
import 'Responsive_example/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          mobile:MobileScreen() ,
          tablet: TabletScreen() ,
          desktop: DesktopScreen(),
        ) );
  }
}