import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  // making a contructor for the text
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
