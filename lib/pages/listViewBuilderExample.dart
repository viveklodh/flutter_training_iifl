
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List View page"),),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  tileColor: Colors.red,
                  leading: Icon(Icons.add),
                  title: Text("hello"),
                  subtitle: Text("subtile"),
                  trailing: Icon(Icons.delete),
                ),
              );
            })
    );
  }
}


