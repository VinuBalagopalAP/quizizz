import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:centrric_assignment/quiz/question.dart';

class Quiz with ChangeNotifier {
  int index = 0;
  bool hasFinshed = false;
  bool hasAnswered = false;
  String selectedAnswer;
  int score = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int streak = 0;
  List<Question> _questions = [
    Question(
      question: 'Which Planet In Our Solar System is Known as Red Planet?',
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
        4: 'Jupiter',
      },
      answer: 'Alexander Graham Bell',
    ),
  ];

  List<Question> get questions {
    return [..._questions];
  }

  void onValidate(String answer, int i, BuildContext context) {
    print(_questions.length);
    hasAnswered = true;
    selectedAnswer = answer;
    if (answer == _questions[i].answer) {
      print('Correct');
      streak++;
      score += 10;
      correctAnswers++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Correct',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
      print('wrong');
      streak = 0;
      wrongAnswers++;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Inorrect',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    notifyListeners();
  }

  void onNext(int i) {
    index++;
    if (i >= _questions.length - 1) {
      hasFinshed = true;
    }

    hasAnswered = false;
    notifyListeners();
  }
}
