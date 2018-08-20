import 'package:flutter/material.dart';

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
          child: new ListView(
              padding: const EdgeInsets.only(left: 40.0),
              children: <Widget>[
            new ItemMainList(icon: Icons.block, text: 'Não faça'),
            new ItemMainList(icon: Icons.ac_unit, text: 'Que frio'),
            new ItemMainList(icon: Icons.access_time, text: 'Tempo'),
          ])
        ),
    ));
  }
}

class ItemMainList extends StatelessWidget {

  final IconData icon;
  final String text;

  const ItemMainList({
    Key key, this.icon, this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new Icon(
          this.icon,
          color: Colors.white,
          size: 42.0
        ),
        title: new Text(
          this.text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 42.0),
        )
    );
  }
}
