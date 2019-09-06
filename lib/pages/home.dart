import 'package:flutter/material.dart';
import 'package:my_first_app/pages/IPage.dart';
import 'package:my_first_app/utils/navigator.dart';

class HomePage extends StatefulWidget with IPage {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
          child: Column(
            children: <Widget>[
              Text("home page"),
              RaisedButton(child: Text("to album page"),onPressed: () {
                NavigatorUtil.album(context, "2");
              },)
            ],
          ),)
      );
  }
}