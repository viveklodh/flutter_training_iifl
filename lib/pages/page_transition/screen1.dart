import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/pages/page_transition/screen2.dart';
import 'package:page_transition/page_transition.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 1"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          duration: Duration(seconds: 2),
                          child: Screen2()));
                },
                child: Text("left to right"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(seconds: 2),
                          child: Screen2()));
                },
                child: Text("right to left"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(seconds: 2),
                          child: Screen2()));
                },
                child: Text("bottom to top"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(seconds: 2),
                          child: Screen2()));
                },
                child: Text("fade"),
              )
            ],
          ),
        ));
  }
}
