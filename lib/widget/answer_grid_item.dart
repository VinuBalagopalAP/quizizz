import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnswerGridIterm extends StatelessWidget {
  final String? text;
  final Color color;
  final int index;
  final bool visible;

  AnswerGridIterm(
    this.text,
    this.color,
    this.index,
    this.visible,
  );

  @override
  Widget build(BuildContext context) {
    Function validate = Provider.of<Quiz>(context).onValidate;
    bool answered = Provider.of<Quiz>(context).hasAnswered;
    return GestureDetector(
      onTap: () {
        if (!answered) {
          validate(text, index, context);
        }
      },
      // child: Visibility(
      //   visible: visible,
      child: AnimatedOpacity(
        opacity: visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Card(
          color: color,
          child: Center(
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
