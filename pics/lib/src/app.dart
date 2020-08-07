import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
  State<App> createState() {
    return Appstate();
  }

}

class Appstate extends State<App> {

int counter = 0;
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Welcome to Pics App."),)
        ,body: Text("$counter"),
        floatingActionButton:
         FloatingActionButton(
           child: Icon(Icons.photo_library),
           // On press of button we are calling 
           //Set state method from Parent Class State
           // to maintain the value of counter from 
           //previous click of the button
           onPressed:  () => setState(() => counter +=1 )
         ,)
         ,)
         ,);
  }
}