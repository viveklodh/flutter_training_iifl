import 'package:flutter/material.dart';
import 'package:flutter_training_iifl/weather_api/weather_model.dart';

class IiflFinanceDemo extends StatelessWidget {
  const IiflFinanceDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///app bar
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.deepPurple,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset('images/logo.png', color: Colors.white),
                  const SizedBox(width: 20),
                  const Text(
                    "FINANCE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            /// content body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0,vertical: 20),
              child: Column(
                children: [
                  ///
                  const SizedBox(height: 30),
                  ///
                  const Text("Hi Adv test!",  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
                  ///
                  const SizedBox(height: 30),
                  ///
                  const Text("We are pleased to offer you an Loan from IIFL Finance. The details of your loan offer are given below:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
                  ///
                  const SizedBox(height: 30),
                  ///
                  Container(
                    height: 100,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(
                        width: 1,
                        color: Colors.black45,
                        style: BorderStyle.solid,
                      ),
                      ),
                    child: const  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Prospect ID",  style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal)),
                             Text("GLTEST1281",  style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Customer Name",  style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal)),
                             Text("Adv test",  style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  ///
                  const SizedBox(height: 30),
                  ///
                  Padding(
                    padding: const EdgeInsets.only(left: 75.0),
                    child: Row(
                      children:  [
                        Expanded(
                          child: Column(
                           children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 150,
                                  color: Colors.red,
                                ),
                                Positioned(
                                  left: -75,
                                  top: 0,
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                  ),)
                              ],
                            ),
                             ///
                            const SizedBox(height: 20),
                             ///
                             Stack(
                               clipBehavior: Clip.none,
                               children: [
                                 Container(
                                   height: 150,
                                   color: Colors.orangeAccent,
                                 ),
                                 Positioned(
                                   left: -75,
                                   top: 0,
                                   child: Container(
                                     width: 150,
                                     height: 150,
                                     decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.orange,
                                     ),
                                   ),)
                               ],
                             ),
                             ///
                             const SizedBox(height: 20),
                             ///
                             Stack(
                               clipBehavior: Clip.none,
                               children: [
                                 Container(
                                   height: 150,
                                   color: Colors.orangeAccent,
                                 ),
                                 Positioned(
                                   left: -75,
                                   top: 0,
                                   child: Container(
                                     width: 150,
                                     height: 150,
                                     decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.orange,
                                     ),
                                   ),)
                               ],
                             )
                           ],
                       ),
                        ),
                        Image.asset("images/side_image.png",height: 400,width: 400)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
