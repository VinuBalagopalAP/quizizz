import 'package:centrric_assignment/common_widgets/incorrect_snack_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: InCorrectSnackBar(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
