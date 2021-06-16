import 'package:centrric_assignment/animation/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: CountDown(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
