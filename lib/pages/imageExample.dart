
import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image page"),),
      body: Column(
        children: [
          Image.asset("images/sunset.png",height: 200,width: 300),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuXkYsg5i7ZvLhbSOYYeaCwHt8V7P5KNCSqpRBeBQ6lg&s",height: 200,width: 300,fit: BoxFit.fill),
        ],
      )
    );
  }
}


