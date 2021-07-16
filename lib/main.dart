import 'package:flutter/material.dart';
import 'package:practice1/quiz.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is the capital of Spain?',
      'answers': [
        {'text': 'Madrid', 'score': 10},
        {'text': 'La Lima', 'score': 0},
        {'text': 'Buenos Aires', 'score': 0},
        {'text': 'Bogota', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the capital of Argentina?',
      'answers': [
        {'text': 'Madrid', 'score': 0},
        {'text': 'La Lima', 'score': 0},
        {'text': 'Buenos Aires', 'score': 10},
        {'text': 'Bogota', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the capital of Peru?',
      'answers': [
        {'text': 'Madrid', 'score': 0},
        {'text': 'La Lima', 'score': 10},
        {'text': 'Buenos Aires', 'score': 0},
        {'text': 'Bogota', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
