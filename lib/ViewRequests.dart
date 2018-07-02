import 'package:flutter/material.dart';

class ViewRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = new TextStyle(color: Colors.white);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      color: Colors.teal,
      home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: new Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new FlatButton(
                  onPressed: () => print('lolo'),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.dehaze, color: Colors.white,),
                      Text("Solicitudes", style: textStyle,)
                    ],
                  ),
                ),
                new FlatButton(
                  color: Colors.blue[500],
                  onPressed: () => print('funcion de solicitudes'),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.loop, color: Colors.white,),
                      Text("Solicitudes", style:textStyle ,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'PENDIENTES',),
              Tab(text: 'REALIZADAS',),
            ],
          ),
        ),
        body: new _ViewRequests(),
      ),
    ));
  }
}

class _ViewRequests extends StatefulWidget {
  @override
  _ViewRequestsState createState() => new _ViewRequestsState();
}

class _ViewRequestsState extends State<_ViewRequests> {
  @override
  Widget build(BuildContext context) {

         return new Container(
            color: Colors.white30,
            child: Text('pepo'),
          

      );
}}
