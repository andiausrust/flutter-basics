import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'package:logger/logger.dart';

class Quizz extends StatelessWidget {
  final Function questionAnswers;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quizz({this.questionAnswers, this.questions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    logger.v('You don\'t always want to see all of these');
    logger.d('Logs a debug message');
    logger.i('Public Function called');
    logger.w('This might become a problem');
    logger.e('Something has happened');
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionAnswers(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
