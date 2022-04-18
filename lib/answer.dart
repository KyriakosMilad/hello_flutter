import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var _answerText;
  void Function() _answerHandler;

  Answer(this._answerText, this._answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 2),
      child: ElevatedButton(
        child: Text(_answerText),
        onPressed: _answerHandler,
      ),
    );
  }
}
