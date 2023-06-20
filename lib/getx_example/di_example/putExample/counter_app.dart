import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/getx_example/di_example/putExample/countController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CounterApp extends StatelessWidget {

   var controller = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>
               Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(onPressed: () {
               controller.increment();
            }, child: Text("increment"))
          ],
        ),
      ),
    );
  }
}
