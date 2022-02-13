// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: ListViewWidget(),
        // body: ListViewBuilder(),
        body: GridViewCount(),
      ),
    );
  }
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.yellow,
            height: 100,
            child: Row(
              children: [
                Container(color: Colors.blue, height: 100, width: 100),
                Column(
                  children: [
                    Text("asd"),
                    Text("asd"),
                    Icon(Icons.ac_unit),
                    Icon(Icons.add),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  var lst = ['Ahmed', 'Bilal', 'Carl'];
  var age = ['12', '13', '14'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(lst[index]),
              subtitle: Text(age[index]),
            );
          }),
    );
  }
}

class GridViewCount extends StatefulWidget {
  const GridViewCount({Key? key}) : super(key: key);

  @override
  _GridViewCountState createState() => _GridViewCountState();
}

class _GridViewCountState extends State<GridViewCount> {
  var lst = ['ahmed', 'bilal', 'carl'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20, //vertical space
          mainAxisSpacing: 30, //horizontal space
          children: List.generate(lst.length, (index) {
            return Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Text(lst[index]),
            );
          })),
    );
  }
}
