import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex > 2) {
      _questionIndex = 0;
    }
  }

  var _questions = [
    {
      'questionText': 'What\'s the meaning of Assuetude?',
      'answers': ['kiss', 'insolent', 'habit', 'half'],
    },
    {
      'questionText': 'What\'s the meaning of Disingenuous?',
      'answers': ['guilty', 'jovial', 'jocular', 'insincere'],
    },
    {
      'questionText': 'What\'s the meaning of Afflatus?',
      'answers': ['ghost', 'inspiration', 'lifeless', 'greedy'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(
          20.0,
        ),
        margin: EdgeInsets.all(
          10.0,
        ),
        child: Center(
          child: Column(
            children: [
              Questions(
                _questions[_questionIndex]['questionText'],
              ),
              ...(_questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answers(answer, _answerQuestion);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
