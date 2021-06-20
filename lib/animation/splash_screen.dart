import 'dart:async';

import 'package:flutter/material.dart';
import 'package:centrric_assignment/animation/count_down.dart';
import 'package:centrric_assignment/screens/quiz_home.dart';

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
        builder: (context) => QuizHome(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade900,
        body: AnimatedCountDown(),
      ),
    );
  }
}
