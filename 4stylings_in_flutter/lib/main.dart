// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stylings_in_flutter/app.dart';
import 'package:stylings_in_flutter/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Home(),
        // body: TextStyling(),
        // body: Circleavatar(),
        // body: StackWidget(),
        // body: MediaQueryWidget(),
        // body: NavigatorWidget(),
        body: ListTileWidget(),
      ),
    );
  }
}

class TextStyling extends StatefulWidget {
  const TextStyling({Key? key}) : super(key: key);

  @override
  _TextStylingState createState() => _TextStylingState();
}

class _TextStylingState extends State<TextStyling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Text Styling",
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Circleavatar extends StatefulWidget {
  const Circleavatar({Key? key}) : super(key: key);

  @override
  _CircleavatarState createState() => _CircleavatarState();
}

class _CircleavatarState extends State<Circleavatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          // backgroundColor: Colors.yellow,
          // backgroundImage: NetworkImage(
          //     "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),
          backgroundImage: AssetImage('assets/tree.png'),
        ),
      ),
    );
  }
}

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.green, height: 100, width: 100),
          Positioned(
              left: 20,
              // right: 20,
              // bottom: 20,
              top: 20,
              child: Container(color: Colors.yellow, height: 100, width: 100)),
          Align(
              alignment: Alignment.center,
              child: Container(color: Colors.red, height: 100, width: 100)),
          // Container(color: Colors.blue, height: 100, width: 100)
        ],
      ),
    );
  }
}

class MediaQueryWidget extends StatefulWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  _MediaQueryWidgetState createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        // for 100% height & width
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // for 50% height & width
        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width * .5,
      ),
    );
  }
}

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({Key? key}) : super(key: key);

  @override
  _NavigatorWidgetState createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => App()));
              },
              child: Text("Button"))),
    );
  }
}

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          children: [ClassName(), ClassName(), ClassName()],
        ),
      ),
    );
  }
}

Widget ClassName() {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage("assets/tree.png"),
    ),
    title: Text("test user"),
    subtitle: Text("Hi"),
    trailing: Column(
      children: [
        Text("Test"),
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 10,
          child: Text("2"),
        )
      ],
    ),
  );
}
