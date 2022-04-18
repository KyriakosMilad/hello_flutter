import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'Who is the founder of modern Egypt?',
    'Who is the founder of Egypt and first country in history?',
  ];

  var currentQuestion = 0;

  void answerQuestion() {
    setState(() {
      if ((currentQuestion + 1) <= (questions.length - 1)) {
       currentQuestion = currentQuestion + 1;
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
            Text(questions[currentQuestion]),
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
