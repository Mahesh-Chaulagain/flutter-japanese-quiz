import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final int score;
  final bool isSelected;
  final String correctAnswer;

  const Answer(this.selectHandler, this.answerText, this.score,
      {super.key, required this.isSelected, required this.correctAnswer});

  @override
  Widget build(BuildContext context) {
    bool isCorrect = score == 1;
    Color backgroundColor = isSelected ? Colors.green : Colors.grey;
    // if (answerText == correctAnswer && !isSelected) {
    //   backgroundColor = Colors.blue;
    // }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          foregroundColor: WidgetStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
      ),
    );
  }
}
