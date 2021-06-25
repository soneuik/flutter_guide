import 'package:flutter/material.dart';
import 'package:flutter_guide/quiz.dart';
import 'package:flutter_guide/result.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 1},
          {'text': 'Elephant', 'score': 9},
          {'text': 'Lion', 'score': 8},
        ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
        {'text': 'MAX', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex =0;
      _totalScore =0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ?  Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
            :  Result(_totalScore, _resetQuiz)
      ),
    );
  }
}
