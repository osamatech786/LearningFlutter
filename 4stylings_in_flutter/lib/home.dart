// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //align widget
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          //padding
          padding: EdgeInsets.only(top: 70, right: 20, left: 20, bottom: 20),
          // margin
          margin: EdgeInsets.only(top: 70, right: 20, left: 20, bottom: 20),
          child: Text("Container Decoration"),
          width: 200,
          height: 200,
          //container also can have alignment widget
          alignment: Alignment.topRight,
          // container decoration
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.yellowAccent]),
            // can use hex color by this
            // color: Color(0xff2df7f1),
            borderRadius: BorderRadius.circular(20),
            // more decoration inside in BoxDecoration, check by urself
          ),
        ),
      ),
    );
  }
}
