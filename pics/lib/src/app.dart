import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/Model/ImageModel.dart';
import 'package:pics/src/Widgets/ImageWidget.dart';
import 'Gson.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() {
    return Appstate();
  }
}

class Appstate extends State<App> {
  static const String API_URL = 'http://jsonplaceholder.typicode.com/photos';
  int counter = 0;
  List<ImageModel> images = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Pics App."),
        ),
        body: ImageWidget(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.photo_library),
          // On press of button we are calling
          //Set state method from Parent Class State
          // to maintain the value of counter from
          //previous click of the button
          onPressed: callRestAPI,
        ),
      ),
    );
  }

  void callRestAPI() async {
    counter += 1;
    var apiResponse = await get(API_URL+"/$counter");
    var imageModel = new ImageModel.fromMap(Gson.toObject(apiResponse.body));
    // This function call help the Widget to redraw 
    //whenever there is new image added to the list.

    setState(() => images.add(imageModel));
  }
}
