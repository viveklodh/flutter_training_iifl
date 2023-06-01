import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class HiveDbExample extends StatelessWidget {

  // var box = Hive.box('myBox');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ValueListenableBuilder(
                valueListenable: Hive.box("myBox").listenable(),
                builder: (context, box, _ ) {
                  return Text(box.get("name") ?? "null");
                }),

            ElevatedButton(
              onPressed: () {

                var box = Hive.box("myBox");

                box.put("name", "vivek");

                print("data added");



              },
              child: Text('Insert Data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                var box = Hive.box("myBox");

             var a =   box.get("name");

             print(a);
              },
              child: Text('Retrieve Data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                var box = Hive.box("myBox");

                box.put("name", "karan");
                print("data updated");

              },
              child: Text('Update Data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                var box = Hive.box("myBox");

                box.delete("name");

                print("data deleted");

              },
              child: Text('Delete Data'),
            ),
          ],
        ),
      ),
    );
  }


}
