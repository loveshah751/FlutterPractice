import 'package:flutter/material.dart';


class App extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Welcome to Pics App."),)
        ,floatingActionButton:
         FloatingActionButton(onPressed: () => print("Hello from Flutter")
         ,child: Icon(Icons.photo_library)
         ,)
         ,),
          );
  }
}