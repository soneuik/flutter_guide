import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback  selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        //to pass a callback function instead of the result of a function call.
        onPressed:selectHandler,
      ),
    );
  }
}
