import 'package:flutter/material.dart';
import './registre_page.dart';
import './categoria_enum.dart';
import './categoria.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
          child: new Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
            new ItemMainList(categoria: CategoriaEnum.LOVE),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.REMEMBER),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.QUOTE),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.IDEIA),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.ALERT),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.ERROR),
            new Divider(),
            new ItemMainList(categoria: CategoriaEnum.HATE)
          ]))),
    );
  }
}

class ItemMainList extends StatelessWidget {
  final Categoria categoria;

  const ItemMainList({Key key, this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Icon(this.categoria.icon,
          color: this.categoria.color, size: 42.0),
      title: new Text(
        this.categoria.description,
        style: new TextStyle(
            color: this.categoria.color,
            fontWeight: FontWeight.bold,
            fontSize: 24.0),
      ),
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) =>
                new RegistrePage(categoria: this.categoria)));
      },
    );
  }
}
