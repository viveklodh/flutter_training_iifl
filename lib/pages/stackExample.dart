import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stack page'),
      ), //AppBar
      body: Center(
        child: Stack(
          clipBehavior: Clip.none, children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ), //Container
          Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ), //Container
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellowAccent,
              ),
            ),
          ), //Container
        ], //<Widget>[]
        ),
      ), //Stack
      //Center
    );
  }
}
