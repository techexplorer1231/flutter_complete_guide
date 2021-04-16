import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer 1 Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => print('Anser 2 chosen!'),
                child: Text('Anser 2')),
            ElevatedButton(
                onPressed: () {
                  print('Answer 3 Chosen');
                },
                child: Text('Anser 3'))
          ],
        ),
      ),
    );
  }
}
