import 'package:centrric_assignment/providers/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScoreBoard extends StatelessWidget {
  int? get i => null;

  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<QuizProvider>(context);
    var score = quiz.score;
    var questionLength = quiz.questions.length;
    var correctAnswers = quiz.correctAnswers;
    return Container(
      // padding: EdgeInsets.all(
      //   32.0,w
      // ),
      // color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black38,
            child: Text(
              'Score : $score / ${questionLength * 10}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black38,
            child: Text(
              'Correct Answers : $correctAnswers / $questionLength ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: ElevatedButton(
              child: Text(
                'Exit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple.shade400,
              ),
              onPressed: () {
                quiz.onReset(i);
              },
            ),
          ),
        ],
      ),
    );
  }
}
