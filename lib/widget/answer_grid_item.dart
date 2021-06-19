import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnswerGridIterm extends StatelessWidget {
  final String text;
  final Color color;
  final int index;

  AnswerGridIterm(
    this.text,
    this.color,
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    Function validate = Provider.of<Quiz>(context).onValidate;
    return GestureDetector(
      onTap: () {
        validate(text, index);
      },
      child: Card(
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
