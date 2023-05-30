
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("page 3"),),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
        )
    );
  }
}
