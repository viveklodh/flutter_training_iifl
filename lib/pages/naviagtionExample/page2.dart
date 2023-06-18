
import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/pages/naviagtionExample/page1.dart';
import 'package:flutter_training_iifl/pages/naviagtionExample/page3.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {

  var name ;

   Page2({required this.name,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("page 2"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              ElevatedButton(
                onPressed: (){
               //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
                  Get.to(Page3());
                },
                child: Text("navigate"),
              ),
            ],
          ),
        )
    );
  }
}
