import 'package:flutter/material.dart';
import 'package:trade_app/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      body: Login(),
    );
    MaterialApp materialApp = MaterialApp(
      home: scaffold,
    );
    return materialApp;
  }
}

