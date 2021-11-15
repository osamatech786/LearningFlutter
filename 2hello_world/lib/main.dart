// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      //app title
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        //default theme color is blue
        primarySwatch: Colors.blue,
      ),
      */
      home: Scaffold(
        body: Text("Hellow World!"),
      ),
    );
  }
}
