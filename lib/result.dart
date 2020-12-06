import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _restartQuiz;
  String get resultPhrase {
    String resultText;

    if (_resultScore > 14) {
      resultText = 'You are awesome!';
    } else if (_resultScore < 14 && _resultScore > 7) {
      resultText = 'We might get along';
    } else {
      resultText = 'We wont get along';
    }

    return resultText;
  }

  Result(this._resultScore, this._restartQuiz);

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
          FlatButton(onPressed: _restartQuiz, child: Text('Restart quiz'))
        ],
      ),
    );
  }
}
