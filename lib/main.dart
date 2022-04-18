import 'package:flutter/material.dart';

import 'package:hello_flutter/quiz.dart';
import 'package:hello_flutter/result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  static const _questions = [
    {
      'question': 'Who is the founder of modern Egypt?',
      'answers': ['Al-Sadat', 'Al-Sisi', 'Mohammed Ali', 'Abdel-Naser'],
    },
    {
      'question': 'Who is the founder of Egypt and first country in history?',
      'answers': ['Narmer', 'Ramses II', 'Thotmose III', 'Amenhotep'],
    },
  ];

  var _currentQuestion = 0;

  void answerQuestion() {
    setState(() {
      // if (_currentQuestion < _questions.length - 1) {
      _currentQuestion = _currentQuestion + 1;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('hello_flutter'),
      ),
      body: _currentQuestion < _questions.length
          ? Quiz(_questions, _currentQuestion, answerQuestion)
          : Result(),
    ));
  }
}
