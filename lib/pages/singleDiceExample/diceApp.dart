import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
   DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var number = 1;
  var colors = [Colors.red,Colors.lightBlue,Colors.green,Colors.yellow,Colors.tealAccent,Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DiceApp"),),
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              number = Random().nextInt(5) + 1;
            });
          },
          child: Container(
            width: 150,
            height: 150,
            color:colors[number],
            child:Center(child: Text(number.toString(),style: TextStyle(fontSize: 50),))
          ),
        ),
      ),
    );
  }
}
