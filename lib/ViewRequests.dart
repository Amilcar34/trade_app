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
                      onPressed: () => print('dolina'),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.dehaze,
                            color: Colors.white,
                          ),
                          Text(
                            "Solicitudes",
                            style: textStyle,
                          )
                        ],
                      ),
                    ),
                    new FlatButton(
                      color: Colors.blue[500],
                      onPressed: () => print('funcion de solicitudes'),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.loop,
                            color: Colors.white,
                          ),
                          Text(
                            "Solicitudes",
                            style: textStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'PENDIENTES',
                  ),
                  Tab(
                    text: 'REALIZADAS',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                new _Pending(),
                new _Done(),
              ],
            ),
          ),
        ));
  }
}

class _Pending extends StatefulWidget {
  @override
  _PendingState createState() => new _PendingState();
}

class _PendingState extends State<_Pending>{
  @override
  Widget build(BuildContext context) {
    return Text('pendiente');
  }
}

class _Done extends StatefulWidget {
  @override
  _DoneState  createState() => new _DoneState();
}

class _DoneState extends State<_Done>{
  @override
  Widget build(BuildContext context) {
    return new Text('realizado');
  }
}