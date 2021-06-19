import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:centrric_assignment/quiz/question.dart';

class Quiz with ChangeNotifier {
  int index = 0;
  bool hasFinshed = false;
  List<Question> _questions = [
    Question(
      question: 'Which Planet In Our Solar System is Known as Red Planer?',
      options: {
        1: 'Alexander\nFleming',
        2: 'Alexander\nGraham Bell',
        3: 'Thomas\nAlva Edison',
        4: 'Mars',
      },
      answer: 'Mars',
    ),
    Question(
      question: 'Who invented the Light Bulb?',
      options: {
        1: 'Jupiter',
        2: 'Alexander\nGraham Bell',
        3: 'Thomas\nAlva Edison',
        4: 'Mars',
      },
      answer: 'Thomas Alva Edison',
    ),
    Question(
      question: 'Who discovered Penincillin?',
      options: {
        1: 'Alexander\nFleming',
        2: 'Alexander\nGraham Bell',
        3: 'Thomas\nAlva Edison',
        4: 'Jupiter',
      },
      answer: 'Alexander Graham Bell',
    ),
  ];

  List<Question> get questions {
    return [..._questions];
  }

  void onValidate(String selectedAnswer, int i) {
    print(_questions.length);
    if (selectedAnswer == _questions[i].answer) {
      print('Correct');
      index++;
    } else {
      print('wrong');
      index++;
    }
    if (i >= _questions.length - 1) {
      hasFinshed = true;
    }
    notifyListeners();
  }
}
