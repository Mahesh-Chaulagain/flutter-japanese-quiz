import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "The Japanese word for 'happy' is:",
      'answers': [
        {'text': 'Kanashii', 'score': 0},
        {'text': 'Ureshii', 'score': 1},
        {'text': 'Sabishii', 'score': 0},
        {'text': 'Fukai', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'friend' is:",
      'answers': [
        {'text': 'Tomodachi', 'score': 1},
        {'text': 'Suki', 'score': 0},
        {'text': 'Kawaii', 'score': 0},
        {'text': 'Kare', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'thank you' is:",
      'answers': [
        {'text': 'Sumimasen', 'score': 0},
        {'text': 'Arigatou', 'score': 1},
        {'text': 'Ohayou', 'score': 0},
        {'text': 'Sayonara', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'love' is:",
      'answers': [
        {'text': 'Ai', 'score': 1},
        {'text': 'Hana', 'score': 0},
        {'text': 'Kawaii', 'score': 0},
        {'text': 'Neko', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'water' is:",
      'answers': [
        {'text': 'Yuki', 'score': 0},
        {'text': 'Mizu', 'score': 1},
        {'text': 'Sora', 'score': 0},
        {'text': 'Tori', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'sun' is:",
      'answers': [
        {'text': 'Tsuki', 'score': 0},
        {'text': 'Hoshi', 'score': 0},
        {'text': 'Taiyou', 'score': 1},
        {'text': 'Kumo', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'moon' is:",
      'answers': [
        {'text': 'Hoshi', 'score': 0},
        {'text': 'Tsuki', 'score': 1},
        {'text': 'Kumo', 'score': 0},
        {'text': 'Yuki', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'cat' is:",
      'answers': [
        {'text': 'Usagi', 'score': 0},
        {'text': 'Inu', 'score': 0},
        {'text': 'Neko', 'score': 1},
        {'text': 'Tori', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'dog' is:",
      'answers': [
        {'text': 'Neko', 'score': 0},
        {'text': 'Inu', 'score': 1},
        {'text': 'Tori', 'score': 0},
        {'text': 'Kuma', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'house' is:",
      'answers': [
        {'text': 'Kuruma', 'score': 0},
        {'text': 'Mori', 'score': 0},
        {'text': 'Uchi', 'score': 1},
        {'text': 'Sora', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'food' is:",
      'answers': [
        {'text': 'Nomimono', 'score': 0},
        {'text': 'Umi', 'score': 0},
        {'text': 'Tabemono', 'score': 1},
        {'text': 'Kawa', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'school' is:",
      'answers': [
        {'text': 'Shokudo', 'score': 0},
        {'text': 'Byouin', 'score': 0},
        {'text': 'Gakkou', 'score': 1},
        {'text': 'Kouen', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'book' is:",
      'answers': [
        {'text': 'Tegami', 'score': 0},
        {'text': 'Kami', 'score': 0},
        {'text': 'Hon', 'score': 1},
        {'text': 'Enpitsu', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'car' is:",
      'answers': [
        {'text': 'Bicycle', 'score': 0},
        {'text': 'Kuruma', 'score': 1},
        {'text': 'Bas', 'score': 0},
        {'text': 'Toru', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'tree' is:",
      'answers': [
        {'text': 'Ki', 'score': 1},
        {'text': 'Hana', 'score': 0},
        {'text': 'Tori', 'score': 0},
        {'text': 'Yuki', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'flower' is:",
      'answers': [
        {'text': 'Ki', 'score': 0},
        {'text': 'Yuki', 'score': 0},
        {'text': 'Hana', 'score': 1},
        {'text': 'Tori', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'mountain' is:",
      'answers': [
        {'text': 'Kawa', 'score': 0},
        {'text': 'Yama', 'score': 1},
        {'text': 'Umi', 'score': 0},
        {'text': 'Mizu', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'river' is:",
      'answers': [
        {'text': 'Yama', 'score': 0},
        {'text': 'Mizu', 'score': 0},
        {'text': 'Kawa', 'score': 1},
        {'text': 'Umi', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'bird' is:",
      'answers': [
        {'text': 'Inu', 'score': 0},
        {'text': 'Neko', 'score': 0},
        {'text': 'Tori', 'score': 1},
        {'text': 'Usagi', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'fish' is:",
      'answers': [
        {'text': 'Inu', 'score': 0},
        {'text': 'Sakana', 'score': 1},
        {'text': 'Neko', 'score': 0},
        {'text': 'Tori', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'star' is:",
      'answers': [
        {'text': 'Tsuki', 'score': 0},
        {'text': 'Kumo', 'score': 0},
        {'text': 'Hoshi', 'score': 1},
        {'text': 'Umi', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'street' is:",
      'answers': [
        {'text': 'Naka', 'score': 0},
        {'text': 'Hana', 'score': 0},
        {'text': 'Michi', 'score': 1},
        {'text': 'Uchi', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'city' is:",
      'answers': [
        {'text': 'Umi', 'score': 0},
        {'text': 'Yama', 'score': 0},
        {'text': 'Machi', 'score': 1},
        {'text': 'Sora', 'score': 0}
      ]
    },
    {
      'questionText': "The Japanese word for 'sky' is:",
      'answers': [
        {'text': 'Yuki', 'score': 0},
        {'text': 'Sora', 'score': 1},
        {'text': 'Kumo', 'score': 0},
        {'text': 'Hana', 'score': 0}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Japanese Quiz App'),
            ),
            body: (_questionIndex < _questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore)));
  }
}
