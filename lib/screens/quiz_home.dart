import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:centrric_assignment/screens/score_board.dart';
import 'package:centrric_assignment/widget/status_bar.dart';
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
    bool hasAnswered = quiz.hasAnswered;
    String? selectedAnswer = quiz.selectedAnswer;

    Color value(String? correctAnswer) {
      if (correctAnswer == questions[index].answer) {
        print('green');
        return Colors.green;
      } else {
        print('red');
        return Colors.red;
      }
    }

    bool visible(String selectedAnswer, String option) {
      print(selectedAnswer);
      print(option);
      print(questions[index].answer);
      if (selectedAnswer.contains(option)) {
        print('1visible');
        return true;
      }
      if (questions[index].answer.contains(option)) {
        print('2visible');
        return true;
      }
      print('notVisible');
      return false;
    }

    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width - 15,
          child: hasFinished
              ? Center(
                  child: ScoreBoard(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width,
                      child: StatusBar(),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          questions[index].question,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        GridView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(10.0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          children: [
                            AnswerGridIterm(
                              questions[index].options[1],
                              hasAnswered
                                  ? value(
                                      questions[index].options[1],
                                    )
                                  : Colors.amber,
                              index,
                              hasAnswered
                                  ? visible(
                                      selectedAnswer!,
                                      questions[index].options[1]!,
                                    )
                                  : true,
                            ),
                            AnswerGridIterm(
                              questions[index].options[2],
                              hasAnswered
                                  ? value(
                                      questions[index].options[2],
                                    )
                                  : Colors.blue,
                              index,
                              hasAnswered
                                  ? visible(
                                      selectedAnswer!,
                                      questions[index].options[2]!,
                                    )
                                  : true,
                            ),
                            AnswerGridIterm(
                              questions[index].options[3],
                              hasAnswered
                                  ? value(
                                      questions[index].options[3],
                                    )
                                  : Colors.blueGrey,
                              index,
                              hasAnswered
                                  ? visible(
                                      selectedAnswer!,
                                      questions[index].options[3]!,
                                    )
                                  : true,
                            ),
                            AnswerGridIterm(
                              questions[index].options[4],
                              hasAnswered
                                  ? value(
                                      questions[index].options[4],
                                    )
                                  : Colors.cyan,
                              index,
                              hasAnswered
                                  ? visible(
                                      selectedAnswer!,
                                      questions[index].options[4]!,
                                    )
                                  : true,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            quiz.onNext(index);
                          },
                          child: Text('Next'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple.shade400,
                          ),
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
