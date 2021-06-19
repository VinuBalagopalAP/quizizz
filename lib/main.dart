import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:centrric_assignment/animation/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Quiz(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: CountDown(),
        ),
      ),
    );
  }
}
