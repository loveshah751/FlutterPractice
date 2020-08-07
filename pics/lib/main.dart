// Import the helper library from the flutter to get the content on the screen
import  'package:flutter/material.dart';

//Define a Main method to run the app
void main(){
//create new text widget to show some text on screen
var app = MaterialApp(home: Text('Hello World'),themeMode: ThemeMode.light); 

var scaffApp = MaterialApp(home: 
                          Scaffold(floatingActionButton: 
                                    FloatingActionButton(onPressed: 
                                    () => print('Hello'),
                                    child: Icon(Icons.add_a_photo),),
                          appBar: AppBar(title: Text('Welcome to Pics App')
,)));

// take that widget and get it on the screen
runApp(scaffApp);
}

