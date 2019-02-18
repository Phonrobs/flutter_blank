import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          button: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white)
        ),
      ),
      home: AppHome(),
    ),
  );
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Todo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('This is a Text'),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: RaisedButton(
              textColor: Theme.of(context).textTheme.button.color,
              color: Theme.of(context).primaryColor,
              child: Text('This is a Button'),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: CheckboxListTile(
              title: Text('This is a checkbox'),
              activeColor: Theme.of(context).primaryColor,
              value: true,
              onChanged: (bool value) {},
            ),
          ),
        ],
      ),
    );
  }
}