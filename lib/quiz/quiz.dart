import 'package:centrric_assignment/option/custom_option_tile.dart';
import 'package:centrric_assignment/question/question.dart';
import 'package:centrric_assignment/question/question_list.dart';
import 'package:centrric_assignment/quiz/quiz_finished.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<QuizList>(context);
    var questions = quiz.questions;
    int index = quiz.index;
    bool hasFinished = quiz.hasFinshed;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: hasFinished
            ? Center(
                child: QuizFinshed(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Question(
                    text: questions[index].question,
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
                      OptionsTile(
                        questions[index].options[1],
                        Colors.amber,
                        index,
                      ),
                      OptionsTile(
                        questions[index].options[2],
                        Colors.blue,
                        index,
                      ),
                      OptionsTile(
                        questions[index].options[3],
                        Colors.blueGrey,
                        index,
                      ),
                      OptionsTile(
                        questions[index].options[4],
                        Colors.cyan,
                        index,
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
