import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/getx_example/localization_example/langController.dart';
import 'package:get/get.dart';

class LanguageView extends StatelessWidget {
   LanguageView({Key? key}) : super(key: key);

  var controller = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("localization"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text("hello".tr,style: TextStyle(fontSize:50),),

              ElevatedButton(
                onPressed: () {
                controller.changeLocale("hi", "IN");
                },
                child: Text("hindi"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale("en", "US");

                },
                child: Text("english"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale("fr", "FR");
                },
                child: Text("french"),
              ),

            ],
          ),
        ));
  }
}
