import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartHandler;
  Result(this.totalScore, this.restartHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 5) {
      resultText = "You are innocent!";
    } else if (totalScore <= 8) {
      resultText = "You are awesome!";
    } else if (totalScore <= 8) {
      resultText = "You are so strange...";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            child: Text("Restart Quiz!"),
            textColor: Colors.black,
            highlightColor: Colors.blue,
            color: Colors.blue,
            onPressed: restartHandler,
          )
        ],
      ),
    );
  }
}
