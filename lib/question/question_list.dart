import 'package:centrric_assignment/question/question_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class QuizList with ChangeNotifier {
  int index = 0;
  bool hasFinshed = false;
  List<QuestionModel> _questions = [
    QuestionModel(
      question: 'Which Planet In Our Solar System is Known as Red Planer?',
      options: {
        1: 'Alexander\nFleming',
        2: 'Alexander\nGraham Bell',
        3: 'Thomas\nAlva Edison',
        4: 'Mars',
      },
      answer: 'Mars',
    ),
    QuestionModel(
      question: 'Who invented the Light Bulb?',
      options: {
        1: 'Jupiter',
        2: 'Alexander\nGraham Bell',
        3: 'Thomas\nAlva Edison',
        4: 'Mars',
      },
      answer: 'Thomas Alva Edison',
    ),
    QuestionModel(
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

  List<QuestionModel> get questions {
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
