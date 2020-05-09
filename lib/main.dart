// import from library
import 'package:flutter/material.dart';

// import from dart file 
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndext = 0;

  void _answerQuestion() {
    setState(() {
      // change state of the question here
      _questionIndext = _questionIndext + 1;
    });
    print(_questionIndext);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'whats your favourite color ?',
      'whats your favourite animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              question[_questionIndext],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
