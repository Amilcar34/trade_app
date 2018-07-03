import 'package:flutter/material.dart';
import 'package:trade_app/ViewRequests.dart';
import 'package:trade_app/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child:new ViewRequests(),
    ),
    );
    MaterialApp materialApp = MaterialApp(
      home: scaffold,
    );
    return materialApp;
  }
}

