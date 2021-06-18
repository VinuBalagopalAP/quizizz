import 'package:centrric_assignment/animation/splash_screen.dart';
import 'package:centrric_assignment/quiz/question_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Quiz(),
      child: MaterialApp(
        home: SafeArea(
          child: CountDown(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
