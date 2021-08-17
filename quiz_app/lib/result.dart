import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = "Ok";
    } else if (resultScore <= 20) {
      resultText = "Ok, ok";
    } else if (resultScore <= 25) {
      resultText = "Meow";
    } else {
      resultText = "Bla-bla";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetHandler,
              child: Text("Restart Quiz!"),
              style: TextButton.styleFrom(primary: Colors.blue))
        ],
      ),
    );
  }
}
