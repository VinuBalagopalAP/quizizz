import 'package:centrric_assignment/common_widgets/custom_option_cards.dart';
import 'package:flutter/material.dart';

class QuizTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOptionCards(
        optionThree: 'Jupiter',
        optionFour: 'Alxander\nGraham Bell',
        optionTwo: 'Thomas\nAlva Edison',
        optionOne: 'Mars',
        question: 'Who invented the Light Bulb?',
      ),
    );
  }
}
