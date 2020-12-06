import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_part_one/result.dart';
import './quiz.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 2},
        {'text': 'blue', 'score': 12},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 12},
        {'text': 'Cat', 'score': 6},
        {'text': 'Lion', 'score': 4},
        {'text': 'Tiger', 'score': 3},
        {'text': 'Frog', 'score': 2}
      ]
    },
    {
      'questionText': 'Who is your favourite instructor?',
      'answers': [
        {'text': 'Mads', 'score': 2},
        {'text': 'Lars', 'score': 12},
        {'text': 'Peter', 'score': 6}
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_answerQuestion, _questionIndex, _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
