import 'package:flutter/material.dart';
import 'quizz.dart';
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
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', "score": 10},
        {'text': 'red', "score": 5},
        {'text': 'green', "score": 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'rabbit', "score": 10},
        {'text': 'cat', "score": 5},
        {'text': 'dog', "score": 2},
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'max', "score": 10},
        {'text': 'andi', "score": 5},
        {'text': 'john', "score": 2},
      ]
    },
  ];

  var _totalScore = 0;
  var _questionIndex = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore += _totalScore;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quizz(
                questionAnswers: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
