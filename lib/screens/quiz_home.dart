import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:centrric_assignment/widget/answer_grid_item.dart';

class QuizHome extends StatefulWidget {
  @override
  _QuizHome createState() => _QuizHome();
}

class _QuizHome extends State<QuizHome> {
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);
    var questions = quiz.questions;
    int index = quiz.index;
    bool hasFinished = quiz.hasFinshed;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.purple.shade900,
          child: hasFinished
              ? Center(
                  child: Text(
                    'Quiz Finished',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      questions[index].question,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    GridView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(10.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      children: [
                        AnswerGridIterm(
                            questions[index].options[1], Colors.amber, index),
                        AnswerGridIterm(
                            questions[index].options[2], Colors.blue, index),
                        AnswerGridIterm(questions[index].options[3],
                            Colors.blueGrey, index),
                        AnswerGridIterm(
                          questions[index].options[4],
                          Colors.cyan,
                          index,
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
