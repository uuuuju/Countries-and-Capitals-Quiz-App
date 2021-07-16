import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
              color: Colors.purple, fontSize: 30, fontStyle: FontStyle.italic),
          primary: Colors.red, // background
          onPrimary: Colors.white, // foreground
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
