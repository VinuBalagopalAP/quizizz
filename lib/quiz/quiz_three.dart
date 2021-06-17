import 'package:centrric_assignment/common_widgets/custom_option_cards.dart';
import 'package:flutter/material.dart';

class QuizThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOptionCards(
        optionOne: 'Alxander\nGraham Bell',
        optionTwo: 'Alxander Fleming',
        optionThree: 'Thomas\nAlva Edison',
        optionFour: 'Jupiter',
        question: 'Who discovered Penincillin?',
      ),
    );
  }
}
