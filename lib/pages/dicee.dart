import 'dart:math';
import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {

  int number = 1;

  var colors = [Colors.red,Colors.lightBlue,Colors.green,Colors.yellow,Colors.tealAccent,Colors.red];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dice app"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
           number = Random().nextInt(5)+1;
           setState(() {

           });
           print(number);
          },
          child: Container(
            width: 150,
            height: 150,
            color: colors[Random().nextInt(5)],
            child: Center(child: Text(number.toString(),style: TextStyle(fontSize: 60),)),
          ),
        ),
      ),
    );
  }
}
