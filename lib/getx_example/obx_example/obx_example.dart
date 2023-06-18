
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/weather_api/weather_model.dart';
import 'package:get/get.dart';

class ObxExample extends StatelessWidget {
   ObxExample({Key? key}) : super(key: key);

   /// reactive state management

  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obx Example"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///
            Obx(()=> Text(count.toString())),
            ///
            ElevatedButton(onPressed: (){
              count++;
            }, child: Text("increment"))
            ///
          ],
        ),
      ),
    );
  }
}
