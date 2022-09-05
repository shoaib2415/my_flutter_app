import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './name.dart';
import './quizapp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Techwizz'),
          backgroundColor: Color.fromARGB(255, 184, 230, 0),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Name(),
        ), //Padding
      ), //Scaffold
    ); //MaterialApp
  }
}
