import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;

  @override
  State createState() => new QuestionTextState();

}

class QuestionTextState extends State<QuestionText>{

  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 25.0),
        child: new Center(
          child: new Text("Statement 1: Pizza is nice"),
        ), // Center
      ),
    ); // Material
  }
}