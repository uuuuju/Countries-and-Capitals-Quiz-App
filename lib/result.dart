import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore == 30) {
      resultText =
          'Great, You have some excellent knowledge about Countries and their capitals!!';
    } else if (resultScore == 20) {
      resultText =
          'You have pretty good knowledge about Countries and their capitals!!';
    } else if (resultScore == 10) {
      resultText = 'Not Bad!';
    } else if (resultScore == 0) {
      resultText = 'Better luck next time!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text(
                'Restart quiz',
                style: TextStyle(backgroundColor: Colors.green),
              ),
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
