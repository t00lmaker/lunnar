import 'package:flutter/material.dart';

class RegistrePage extends StatefulWidget{

  @override
  _RegistrePageState createState() => new _RegistrePageState();

}

class _RegistrePageState extends State<RegistrePage> {

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Text("test"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        )
      )
    );
  }

}