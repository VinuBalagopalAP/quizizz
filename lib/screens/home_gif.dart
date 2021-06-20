import 'dart:async';

import 'package:centrric_assignment/animation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomeGif extends StatefulWidget {
  @override
  _HomeGifState createState() => _HomeGifState();
}

class _HomeGifState extends State<HomeGif> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => CountDown(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/quizizz.png',
          height: 100,
        ),
        Container(
          width: double.infinity,
          height: 250,
          child: RiveAnimation.asset(
            'assets/logo_main.riv',
          ),
        ),
      ],
    );
  }
}
