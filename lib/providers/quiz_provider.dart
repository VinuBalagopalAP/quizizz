import 'dart:convert';

import 'package:centrric_assignment/model/quiz_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuizProvider with ChangeNotifier {
  int index = 0;
  bool hasFinshed = false;
  bool hasAnswered = false;
  String? selectedAnswer;
  int score = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int streak = 0;

  List<QuestionModel> _questions = [];

  List<QuestionModel> get questions => _questions;

  Future<void> getQuestions() async {
    debugPrint('getQuestions');
    final url =
        Uri.parse("https://quiz-app-flutter-vinu.herokuapp.com/api/questions");

    try {
      final response = await http.get(url);

      // debugPrint(response.body);

      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        _questions = data.map((e) => QuestionModel.fromJson(e)).toList();

        // debugPrint(_questions.toString());

        notifyListeners();
      } else {
        throw Exception('Failed to load questions');
      }
    } catch (error) {
      debugPrint(error.toString());
      throw Exception('Failed to load questions');
    }
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
}
