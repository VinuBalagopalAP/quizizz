import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScoreBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);
    var score = quiz.score;
    var questionLength = quiz.questions.length;
    var correctAnswers = quiz.correctAnswers;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Text(
            'Score : $score / ${questionLength * 10}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Text(
            'Correct Answers : $correctAnswers / $questionLength ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 32.0,
            ),
            color: Colors.black54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          )
        ],
      ),
    );
  }
}
