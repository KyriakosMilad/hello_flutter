import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _currentQuestion;
  final void Function(int, String) _answerQuestion;

  Quiz(this._questions, this._currentQuestion, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_currentQuestion]['question'] as String),
        ...(_questions[_currentQuestion]['answers'] as List<String>)
            .map((e) => Answer(e, () => _answerQuestion(_currentQuestion, e)))
      ],
    );
  }
}
