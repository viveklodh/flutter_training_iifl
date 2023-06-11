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
        color: Colors.white24,
        child: Row(
          children: [
            Expanded(flex:1,child: Container(color: Colors.red,width: 100,height: 100,)),
            Expanded(flex:3,child: Container(color: Colors.blue,width:100,height: 100,)),
           // Expanded(child: Container(color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
