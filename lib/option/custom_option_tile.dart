import 'package:centrric_assignment/question/question_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OptionsTile extends StatelessWidget {
  final String text;
  final Color color;
  final int index;

  OptionsTile({
    required this.text,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Function validate = Provider.of<QuizList>(context).onValidate;
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
