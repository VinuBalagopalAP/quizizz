import 'package:flutter/material.dart';

class QuestionTextStyle extends StatelessWidget {
  const QuestionTextStyle({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
