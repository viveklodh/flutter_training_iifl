
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/weather_api/weather_model.dart';
import 'package:get/get.dart';

class GetBuilderExample extends StatelessWidget {
  GetBuilderExample({Key? key}) : super(key: key);

  /// simple state management
  ///

  /// initialize controller class
 var controller = Get.put(MyController());

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
            GetBuilder<MyController>(
              builder:(_){
                return Text(controller.count.toString());
              }),
            ///
            ElevatedButton(onPressed: (){
             controller.incrementCounter();
            }, child: Text("increment"))
            ///
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController{

  var count = 0;

  incrementCounter(){
    count++;
    update();
  }
}
