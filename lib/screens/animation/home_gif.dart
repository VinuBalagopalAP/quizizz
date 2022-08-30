import 'dart:async';

import 'package:centrric_assignment/screens/animation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomeGif extends StatefulWidget {
  static const String routeName = '/';

  const HomeGif({
    Key? key,
  }) : super(key: key);

  @override
  _HomeGifState createState() => _HomeGifState();
}

class _HomeGifState extends State<HomeGif> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, CountDown.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade900,
      child: Column(
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
      ),
    );
  }
}
