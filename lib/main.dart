import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    "What\'s your favorite animal?",
    "What\'s your favorite color?"
  ];

  void _answerQuestion() {
    setState(() => _questionIndex++);
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: <Widget>[
              Question(
                questionText: _questions[_questionIndex],
              ),
              Answer(
                selectHandler: _answerQuestion,
              ),
              Answer(
                selectHandler: _answerQuestion,
              ),
            ],
          )),
    );
  }
}
