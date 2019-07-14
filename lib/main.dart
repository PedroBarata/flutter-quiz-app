import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';
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

  final _questions = const [
    {
      "questionText": "What\'s your favorite animal?",
      "answers": ["Dog", "Rabbit", "Snake", "Cat"]
    },
    {
      "questionText": "What\'s your favorite color?",
      "answers": ["Red", "Black", "Blue", "Yellow"]
    },
    {
      "questionText": "Who\'s your favorite instructor?",
      "answers": ["Max", "Max", "Max", "Max"]
    },
  ];

  void _answerQuestion() {
    setState(() => _questionIndex++);
    if (_questionIndex < _questions.length) {
      print("One more question!");
    } else {
      print("End of questions");
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
