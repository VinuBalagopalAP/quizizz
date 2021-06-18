import 'package:centrric_assignment/quiz/question_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Quiz with ChangeNotifier {
  List<Question> _questions = [
    Question(
      question: 'Which Planet In Our Solar System is Known as Red Planer?',
      options: {
        1: 'Alexander Fleming',
        2: 'Alexander Graham Bell',
        3: 'Thomas Alva Edison',
        4: 'Mars',
      },
      answer: 'Mars',
    ),
    Question(
      question: 'Who invented the Light Bulb?',
      options: {
        1: 'Jupiter',
        2: 'Alexander Graham Bell',
        3: 'Thomas Alva Edison',
        4: 'Mars',
      },
      answer: 'Thomas Alva Edison',
    ),
    Question(
      question: 'Who discovered Penincillin?',
      options: {
        1: 'Alexander Fleming',
        2: 'Alexander Graham Bell',
        3: 'Thomas Alva Edison',
        4: 'Mars',
      },
      answer: 'Alexander Graham Bell',
    ),
  ];

  List<Question> get questions {
    return [..._questions];
  }
}
