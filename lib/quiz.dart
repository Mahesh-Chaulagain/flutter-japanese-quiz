import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int, String, List<Map<String, Object>>) answerQuestion;
  final int questionIndex;
  final int score;
  final String? feedbackMessage;

  const Quiz(
      {super.key,
      required this.answerQuestion,
      required this.questions,
      required this.questionIndex,
      required this.score,
      required this.feedbackMessage});

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    final answers = currentQuestion['answers'] as List<Map<String, Object>>;
    final correctAnswer = answers.firstWhere((answer) => answer['score'] == 1);

    return Column(
      children: <Widget>[
        Text(
          'Score: ${score}/${questions.length + 1}',
          style: const TextStyle(fontSize: 40, color: Colors.green),
        ),
        Question(currentQuestion['questionText'] as String),
        ...answers.map((answer) {
          bool isSelected = feedbackMessage != null && answer['score'] == 1;
          return Answer(
            () => answerQuestion(
              answer['score'] as int,
              answer['text'] as String,
              answers,
            ),
            answer['text'] as String,
            score,
            isSelected: isSelected,
            correctAnswer: correctAnswer['text'] as String,
          );
        }).toList(),
        if (feedbackMessage != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              feedbackMessage!,
              style: TextStyle(
                  fontSize: 20,
                  color: feedbackMessage!.contains('Correct')
                      ? Colors.green
                      : Colors.red),
            ),
          ),
      ],
    );
  }
}
