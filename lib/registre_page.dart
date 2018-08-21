import 'package:flutter/material.dart';

class RegistrePage extends StatefulWidget {
  @override
  _RegistrePageState createState() => new _RegistrePageState();
}

class _RegistrePageState extends State<RegistrePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.white),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.save),
                alignment: Alignment.center,
                color: Colors.white,
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                onPressed: () {
                  Navigator.maybePop(context);
                }),
          ],
        ),
        body: new Center(
            child: new Container(
                color: Colors.pinkAccent,
                padding: EdgeInsets.all(20.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 6,
                      maxLength: 280,
                      focusNode: null,
                      decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'This is a hint',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.none, color: Colors.white, width: 0.0),
                            borderRadius: BorderRadius.all(new Radius.circular(7.0))
                          )),
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 18.0,
                        ),
                    )
                  ],
                ))));
  }
}
