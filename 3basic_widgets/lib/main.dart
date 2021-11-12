// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  // runApp(ContainerApp());
  // runApp(ColumnApp());
  // runApp(RowApp());
  // runApp(Scroolable());
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 70),
              SizedBox(width: 200, height: 70, child: TextField()),
              SizedBox(width: 200, height: 70, child: TextField()),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              ElevatedButton(onPressed: null, child: Text("Disabled button"))
            ],
          ),
        ),
      ),
    );
  }
}

class Scroolable extends StatelessWidget {
  const Scroolable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow[300],
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple[300],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowApp extends StatelessWidget {
  const RowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 100),
            Text("Row 1"),
            Text("Row 2"),
            Text("Row 3"),
            SizedBox(width: 40),
            Text("Row 4"),
          ],
        ),
      ),
    );
  }
}

class ColumnApp extends StatelessWidget {
  const ColumnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("Column 1"),
            Text("Column 2"),
            Text("Column 3"),
            SizedBox(
              height: 10,
            ),
            Text("Column 4"),
          ],
        ),
      ),
    );
  }
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Text("Container's Text"),
        ),
      ),
    );
  }
}
