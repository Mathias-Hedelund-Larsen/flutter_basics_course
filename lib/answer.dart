import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressed;
  final String _answerText;

  Answer(this._onPressed, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: _onPressed,
        textColor: Colors.white,
        child: Text(_answerText),
        color: Colors.blue,
      ),
    );
  }
}