import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/pages/naviagtionExample/page2.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("page 1"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
           //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(name: "vivek",)));
              Get.to(Page2(name: "vivek",));
            },
            child: Text("navigate"),
          ),
        ));
  }
}
