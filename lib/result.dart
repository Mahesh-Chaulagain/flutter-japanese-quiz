import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  const Result(this.resultScore, this.reset, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your score is: $resultScore / 25',
            style: const TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: reset,
                icon: const Icon(Icons.restart_alt),
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.orange)),
              ),
              TextButton(
                onPressed: reset,
                child: const Text('Reset'),
              )
            ],
          )
        ],
      ),
    );
  }
}
