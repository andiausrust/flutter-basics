import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  final String _answerText;
  Answer(this._answerQuestion, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: _answerQuestion,
      ),
    );
  }
}
