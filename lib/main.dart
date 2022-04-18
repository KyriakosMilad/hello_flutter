import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = [
    'Who is the founder of modern Egypt?',
    'Who is the founder of Egypt and first country in history?',
  ];

  var currentQuestion = 0;

  void answerQuestion() {
    currentQuestion = currentQuestion + 1;
    print(questions[currentQuestion]);
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
            Text(questions[0]),
            ElevatedButton(
              child: Text('Al Sisi'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Narmer'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Ramases II'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
