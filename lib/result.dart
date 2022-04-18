import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _score;
  final void Function() _resetQuiz;

  Result(this._score, this._resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Text(
            _score + '%',
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(onPressed: _resetQuiz, child: Text("Try Again"))
        ]));
  }
}
