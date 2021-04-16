import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Balck', 'Red', 'Green']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Dog', 'Cat', 'Rabbit']
      },
      {
        'questionText': 'What\'s your favourite instructor?',
        'answers': ['Pratap', 'Pratap', 'Pratap']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
