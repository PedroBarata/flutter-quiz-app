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
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What\'s your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Rabbit", "score": 2},
        {"text": "Snake", "score": 5},
        {"text": "Cat", "score": 3}
      ]
    },
    {
      "questionText": "What\'s your favorite color?",
      "answers": [
        {"text": "Red", "score": 2},
        {"text": "Black", "score": 5},
        {"text": "Red", "score": 3},
        {"text": "Red", "score": 1}
      ]
    },
    {
      "questionText": "Who\'s your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1}
      ]
    },
  ];

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

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
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
