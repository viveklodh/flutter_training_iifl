import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded page"),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Row(
          children: [
            Expanded(flex:1,child: Container(color: Colors.red,)),
            Expanded(flex:2,child: Container(color: Colors.blue,)),
            Expanded(flex:1,child: Container(color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
