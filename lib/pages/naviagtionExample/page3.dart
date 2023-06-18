
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("page 3"),),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              // Navigator.pop(context);
              Get.back();
            },
            child: Text("back"),
          ),
        )
    );
  }
}
