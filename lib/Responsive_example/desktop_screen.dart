import 'package:flutter/material.dart';


class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("DESKTOP"),
      ),
      body: Row(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.red,)),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 50, color: Colors.green),
                          );
                        }))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}