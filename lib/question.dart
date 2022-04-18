import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  const Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      child: Text(
        _questionText,
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
