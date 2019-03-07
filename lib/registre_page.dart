import 'package:flutter/material.dart';
import './categoria.dart';

class RegistrePage extends StatelessWidget {
  final Categoria categoria;

  final Color textColor = Colors.white;

  RegistrePage({Key key, @required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: this.categoria.color,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: this.textColor),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.save),
                alignment: Alignment.center,
                color: this.textColor,
                tooltip: "Salvar",
                onPressed: () {
                  Navigator.maybePop(context);
                }),
          ],
        ),
        body: new Center(
            child: new Container(
                color: this.categoria.color,
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                alignment: Alignment.center,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      child: new Text(
                        this.categoria.description + ' ...',
                        style: new TextStyle(
                            color: this.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    new TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      maxLength: 280,
                      autofocus: false,
                      decoration: new InputDecoration(
                          filled: true,
                          fillColor: this.textColor,
                          hintText: 'Digite aqui seu bilhete ...',
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  style: BorderStyle.none,
                                  color: this.categoria.color,
                                  width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)))),
                      style: new TextStyle(
                        color: this.categoria.color,
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ))));
  }
}
