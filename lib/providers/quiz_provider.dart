import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:centrric_assignment/model/quiz_model.dart';

class QuizProvider with ChangeNotifier {
  int index = 0;
  bool hasFinshed = false;
  bool hasAnswered = false;
  String? selectedAnswer;
  int score = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int streak = 0;

  List<QuizModel> _questions = [
    QuizModel(
      question: 'Which Planet In Our Solar System is Known as Red Planet?',
      options: {
        1: 'Alexander Fleming',
        2: 'Alexander Graham Bell',
        3: 'Thomas Alva Edison',
        4: 'Mars',
      },
      answer: 'Mars',
    ),
    QuizModel(
      question: 'Who invented the Light Bulb?',
      options: {
        1: 'Jupiter',
        2: 'Alexander Graham Bell',
        3: 'Thomas Alva Edison',
        4: 'Mars',
      },
      answer: 'Thomas Alva Edison',
    ),
    QuizModel(
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

  List<QuizModel> get questions {
    return [..._questions];
  }

  void onReset(int? i) {
    SystemNavigator.pop();
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

  // Future<void> getQuestions() async {
  //   final uri = "https://api-questions.herokuapp.com/questions";

  //   try {
  //     final response = await http.get(Uri.parse(uri));

  //     if (response.statusCode == 200) {
  //       final questions = json.decode(response.body);

  //       _questions = questions.map((question) {
  //         return QuizModel(
  //           question: question['question'],
  //           options: question['options'],
  //           answer: question['answer'],
  //         );
  //       }).toList();

  //       notifyListeners();
  //     } else {
  //       throw Exception('Failed to load questions');
  //     }
  //   } catch (error) {
  //     throw Exception(error.toString());
  //   }
  // }
}
