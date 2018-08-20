import 'package:flutter/material.dart';
import './registre_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: new Center(
          child: new Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
            new ItemMainList(icon: Icons.favorite, text: 'Te amo por isso ...'),
            new Divider(),
            new ItemMainList(icon: Icons.add_alert, text: 'Lembrei de Você'),
            new Divider(),
            new ItemMainList(
                icon: Icons.format_quote, text: 'Só queria te dizer ...'),
            new Divider(),
            new ItemMainList(
                icon: Icons.lightbulb_outline, text: 'Nós poderiamos ...'),
            new Divider(),
            new ItemMainList(
                icon: Icons.announcement, text: 'Comportamento Suspeito'),
            new Divider(),
            new ItemMainList(icon: Icons.block, text: 'Pisou na Bola'),
            new Divider(),
            new ItemMainList(icon: Icons.delete_forever, text: 'Odeio isso ...'),
          ]))),
    );
  }
}

class ItemMainList extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMainList({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Icon(this.icon, color: Colors.white, size: 42.0),
      title: new Text(
        this.text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
      ),
      onTap: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new RegistrePage()));
      },
    );
  }
}
