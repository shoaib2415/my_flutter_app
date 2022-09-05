import 'package:flutter/material.dart';
import 'package:quizzer/name.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler,
      {Key? key, required String name})
      : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 80) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 60) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 50) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 30) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
          ), //Text
          TextButton(
            onPressed: () => resetHandler(),
            child: Container(
              color: Color.fromARGB(255, 175, 76, 153),
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
