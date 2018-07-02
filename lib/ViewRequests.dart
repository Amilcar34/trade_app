import 'package:flutter/material.dart';

class ViewRequests extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new _ViewRequests(),
      ),
    );
  }

}

class _ViewRequests extends StatefulWidget{
  @override
  _ViewRequestsState createState() => new _ViewRequestsState();
}

class _ViewRequestsState extends State<_ViewRequests>{
  @override
  Widget build(BuildContext context) =>
      new Column(
        children: <Widget>[
          new Container(
            child:
            new Padding(
              child:
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            new FlatButton(
                              onPressed: () => {},
                              padding: EdgeInsets.all(0.0),
                              child: Row( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.dehaze),
                                  Text("Solicitudes"),
                                ],
                              ),
                            ),

                        ]
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new FlatButton(
                          onPressed:  () => {},
                          color: Colors.indigoAccent[400],
                          child: new Row(
                            children: <Widget>[
                              Icon(Icons.loop),
                              Text('Sincronizar'),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]
              ),
              padding: const EdgeInsets.all(24.0),
            ),
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.topCenter,
          ),
          new TabBar(
            tabs: <Widget>[
              Text("text"), new Text("text 2")
            ],
          ),
        ],
      );
}