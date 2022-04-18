import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final void Function() _answerHandler;

  const Answer(this._answerText, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 2),
      child: ElevatedButton(
        child: Text(_answerText),
        onPressed: _answerHandler,
      ),
    );
  }
}
