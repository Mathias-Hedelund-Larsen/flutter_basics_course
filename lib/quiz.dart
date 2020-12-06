import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function onPressed;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(this.onPressed, this.questionIndex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => onPressed(answer['score']), answer['text'])),
      ],
    );
  }
}
