// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        Text("Go back"),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"))
      ]),
    );
  }
}
