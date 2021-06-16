import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
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
    var duration = Duration(seconds: 4);
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
        body: Center(
          child: Container(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('3'),
                    FadeAnimatedText('2'),
                    FadeAnimatedText('1'),
                    FadeAnimatedText('Go!'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
