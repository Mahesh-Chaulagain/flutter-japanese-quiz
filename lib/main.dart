import 'package:Nihongo_kuizu/questions_list.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = QuestionsList().questionList;

  var _questionIndex = 0;
  var _totalScore = 0;
  String? _feedbackMessage;

  late List<Map<String, Object>> _shuffledQuestions;

  @override
  void initState() {
    super.initState();
    // shuffle the questions at the start of the app
    _shuffledQuestions = List.from(_questions);
    _shuffledQuestions.shuffle();
  }

  void _answerQuestion(
      int score, String answerText, List<Map<String, Object>> answers) {
    setState(() {
      // Update score if correct answer
      if (score == 1) {
        _totalScore += score;
      }

      // Set feedback message
      _feedbackMessage = score == 1
          ? 'Correct! The correct answer is: $answerText'
          : 'Wrong! The correct answer was: ${answers.firstWhere((ans) => ans['score'] == 1)['text']}';

      // Move to next question after 2 seconds
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          if (_questionIndex < _shuffledQuestions.length - 1) {
            _questionIndex++;
            _feedbackMessage =
                null; // Reset feedback message for the next question
          }
        });
      });
    });
  }

  void reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
      _shuffledQuestions.shuffle(); // shuffle again when restarting
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Japanese Quiz App'),
            ),
            body: (_questionIndex < _shuffledQuestions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _shuffledQuestions,
                    score: _totalScore,
                    feedbackMessage: _feedbackMessage,
                  )
                : Result(
                    _totalScore,
                    reset,
                  )));
  }
}
