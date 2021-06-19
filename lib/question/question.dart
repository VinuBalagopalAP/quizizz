import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
