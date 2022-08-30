import 'dart:async';

import 'package:flutter/material.dart';
import 'package:centrric_assignment/screens/quiz_home.dart';
import 'package:lottie/lottie.dart';

class CountDown extends StatefulWidget {
  static const String routeName = '/countdown';

  const CountDown({
    Key? key,
  }) : super(key: key);

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
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => QuizHome()),
    // );
    Navigator.pushNamed(context, QuizHome.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple.shade900,
        child: Center(
            child: Lottie.network(
                "https://assets7.lottiefiles.com/private_files/lf30_wgf37nmf.json")));
  }
}
