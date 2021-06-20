import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);
    var streak = quiz.streak;
    var questionLength = quiz.questions.length;
    var index = quiz.index;
    var score = quiz.score;
    return Row(
      children: [
        Card(
          color: Colors.grey,
          margin: EdgeInsets.all(10),
          child: Text(
            '$index/$questionLength',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: streak / questionLength,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Streks',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Icon(
          Icons.local_fire_department_sharp,
          color: Colors.white,
        ),
        Text(
          streak.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Spacer(),
        Icon(
          Icons.credit_score,
          color: Colors.white,
        ),
        Text(
          score.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
