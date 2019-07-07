import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Function reset;
  final int result;
  Result(this.result, this.reset);

  String get resultPhrase {
    var resultText = 'you did it';
    if (result <= 8) {
      resultText = "your are awesome";
    } else if (result <= 12) {
      resultText = 'pretty likeable';
    } else {
      resultText = 'well done';
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
          FlatButton(
            child: Text('restart quizz'),
            color: Colors.blueAccent,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
