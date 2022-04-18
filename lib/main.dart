import 'package:flutter/material.dart';

import 'package:hello_flutter/question.dart';
import 'package:hello_flutter/answer.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questions = [
    'Who is the founder of modern Egypt?',
    'Who is the founder of Egypt and first country in history?',
  ];

  var _currentQuestion = 0;

  void answerQuestion() {
    setState(() {
      if ((_currentQuestion + 1) <= (_questions.length - 1)) {
        _currentQuestion = _currentQuestion + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello_flutter'),
        ),
        body: Column(
          children: [
            Question(_questions[_currentQuestion]),
            Answer('Al Sisi', answerQuestion),
            Answer('Narmer', answerQuestion),
            Answer('Ramses II', answerQuestion),
          ],
        ),
      ),
    );
  }
}
