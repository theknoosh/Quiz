import 'package:flutter/material.dart';
import './landing_page.dart';

class scorePage extends StatelessWidget {

  final int score;
  final int totalQuestions;

  scorePage(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Your Score: ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0),),
          new Text(score.toString() + "/" + totalQuestions.toString(), style: new TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 50.0),),
          new IconButton(
              icon: new Icon(Icons.arrow_right),
              color: Colors.white,
              iconSize: 100.0,
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
                  builder: (BuildContext context) => new LandingPage()), (Route route) => route == null),
          )
        ],
      ), // Column
    ); // Material
  } // Widget

} // ScorePage