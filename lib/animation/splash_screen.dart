import 'dart:async';

import 'package:centrric_assignment/animation/count_down.dart';
import 'package:centrric_assignment/quiz/quiz_one.dart';
import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(
      seconds: 11,
    );
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => QuizOne(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: AnimatedCountDown(),
      ),
    );
  }
}
