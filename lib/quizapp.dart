import 'package:flutter/material.dart';
import 'package:quizzer/name.dart';

import './quiz.dart';
import './result.dart';
import './main.dart';
import './name.dart';

class QuizApp extends StatefulWidget {
  const QuizApp(String s, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questionText': 'Q1. What is the state flower of Haryana?',
      'answers': [
        {'text': 'Rose', 'score': 0},
        {'text': 'Lilly', 'score': 0},
        {'text': 'Lotus', 'score': 10},
        {'text': 'Jasmine', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q2. Which of the following states is not located in the North?',
      'answers': [
        {'text': 'Jammu and Kashmir', 'score': 0},
        {'text': 'Himachal Pradesh', 'score': 0},
        {'text': 'Haryana', 'score': 0},
        {'text': 'Karnataka', 'score': 10},
      ],
    },
    {
      'questionText':
          ' Q3. In which of the following state, the main language is Khasi?',
      'answers': [
        {'text': 'Mizoram', 'score': 0},
        {'text': 'Meghalaya', 'score': 10},
        {'text': 'Nagaland', 'score': 0},
        {'text': 'Tripura', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q4. Which is the largest coffee-producing state of India?',
      'answers': [
        {'text': 'Karnataka', 'score': 10},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Punjab', 'score': 0},
        {'text': 'Telangana', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. Which state has the largest area?',
      'answers': [
        {'text': 'Maharashtra', 'score': 10},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Punjab', 'score': 0},
        {'text': 'Telangana', 'score': 0},
      ],
    },
    {
      'questionText': 'Q6.Which state has the largest population?',
      'answers': [
        {'text': 'Maharashtra', 'score': 0},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Punjab', 'score': 0},
        {'text': 'Utttar Pradesh', 'score': 10},
      ],
    },
    {
      'questionText': 'Q7.  In what state is Elephant Falls located?',
      'answers': [
        {'text': 'Maharashtra', 'score': 0},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Meghalaya', 'score': 10},
        {'text': 'Utttar Pradesh', 'score': 0},
      ],
    },
    {
      'questionText': 'Q8. Capital of India is?',
      'answers': [
        {'text': 'Maharashtra', 'score': 0},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Delhi', 'score': 10},
        {'text': 'Utttar Pradesh', 'score': 0},
      ],
    },
    {
      'questionText': 'Q9.  In what state is Elephant Falls located?',
      'answers': [
        {'text': 'Maharashtra', 'score': 0},
        {'text': 'Kerala', 'score': 0},
        {'text': 'Tamil Nadu', 'score': 10},
        {'text': 'Utttar Pradesh', 'score': 0},
      ],
    },
    {
      'questionText': 'Q10.How many states are present in India?',
      'answers': [
        {'text': '29', 'score': 10},
        {'text': '28', 'score': 0},
        {'text': '25', 'score': 0},
        {'text': '30', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  get name => null;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) => Name()));
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   _answerQuestion(2);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(children: [
      _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            ) //Quiz
          : Result(
              _totalScore,
              _resetQuiz,
              name: '',
            ),
    ]));
//MaterialApp
  }
}
