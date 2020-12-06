import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _qustionText;

  Question(this._qustionText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_qustionText, 
        style: TextStyle(
          fontSize: 28
        ),
      textAlign: TextAlign.center,),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}