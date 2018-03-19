import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.deepOrange,
      child: new InkWell(
        onTap: () => print("We tapped the screen"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Lets Quizz",style: new TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold),
            ),
            new Text("Tap to Start",style: new TextStyle(
              color: Colors.yellow,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),),
          ], // <widget>[]
        ), // Column
      ), // Inkwell
    ); // Material
  }
}