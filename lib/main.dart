import 'package:flutter/material.dart';

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
              Text(_questions[_questionIndex]),
              RaisedButton(
                onPressed: _answerQuestion,
                child: Text('The answer 1'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('The answer 2'),
              ),
            ],
          )),
    );
  }
}
