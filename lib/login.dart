import 'package:flutter/material.dart';
import 'package:validate/validate.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final white = new TextStyle(color: Colors.black);
    return new Form(
      key: _formKey,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text('Trade',
            style: new TextStyle(fontSize:60.0,
                color: Colors.teal,
                fontWeight: FontWeight.w600,
                fontFamily: "Merriweather"
            ),
          ),
          new TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: white,
            decoration: InputDecoration(
              labelText: 'Usuario', labelStyle: white),
            validator: (v) {
              if (v.isEmpty) return 'Ingrese su usuario';
            }
          ),
          new TextFormField(
            style: white,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña', labelStyle: white,
            ),
            validator: (v){
              if(v.isEmpty) return 'Ingrese su contraseña';
            },
          ),
          new Container(
            width: 200.0,
            child: new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: RaisedButton(
                color: Colors.white,
                onPressed: (){
                  if(_formKey.currentState.validate())
                    Scaffold.of(context).showSnackBar(SnackBar(content: new Text('Conectando')));
                },
                child: Text('INGRESAR', style: TextStyle(color: Colors.teal),),
              ),
            ),
            margin: new EdgeInsets.only(
                top: 20.0
            ),
          )

        ],
      ),
  );


  }
}
