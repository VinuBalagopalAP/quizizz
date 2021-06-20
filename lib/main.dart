import 'package:centrric_assignment/quiz/quiz.dart';
import 'package:centrric_assignment/screens/home_gif.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Quiz(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.purple.shade900,
          body: HomeGif(),
        ),
      ),
    );
  }
}
