import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _score;

  Result(this._score);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      _score + '%',
      style: const TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
    ));
  }
}
