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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new FlatButton.icon(
                  icon: Icon(Icons.dehaze, color: Colors.white,),
                  label: Text("Solicitudes ", style: textStyle),
                  onPressed: () => print('dolina'),
                  ),
                new FlatButton.icon(
                  icon: Icon(Icons.loop,size: 17.0,color: Colors.white),
                  color: Colors.blue[500],
                  label: Text("Solicitudes",style: textStyle),
                  onPressed: () => print('funcion de solicitudes'),
                  ),
              ],
            ),
            bottom: TabBar(tabs: [Tab(text: 'PENDIENTES',),Tab(text: 'REALIZADAS'),],
            ),
          ),
          body: TabBarView(
            children: [new _Pending(), new _Done()],
          ),
        ),
      ),
    );
  }
}

class _Pending extends StatefulWidget {
  @override
  _PendingState createState() {
    return new _PendingState();
  }
}

class _Done extends StatefulWidget {
  @override
  _DoneState createState() {
    return new _DoneState();
  }
}

class _PendingState extends State<_Pending> {
  Color _grey = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: new Padding(
          padding: EdgeInsets.all(5.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('7 DE JULIO',style: TextStyle(color: Colors.grey[700]),),
              new Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Image(image: AssetImage('assets/primera.png'), width: 110.0, height: 70.0,),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => print('supermercado coto ' + Icons.more_vert.toString() ),
                      child: Row(children: <Widget>[
                          Text('Supermercado Coto ', style: TextStyle(fontSize: 10.0,color: _grey),),
                          Icon(Icons.more_vert, color:_grey , size: 13.0,)],
                      ),
                    ),
                  ],
                  ),
                ],
              ),
            ),
          ],
          ),
    ),
    );
  }
}

class _DoneState extends State<_Done> {
  @override
  Widget build(BuildContext context) {
    return new Text('realizado');
  }
}
