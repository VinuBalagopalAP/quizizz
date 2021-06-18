import 'package:centrric_assignment/common_widgets/custom_option_cards.dart';
import 'package:flutter/material.dart';

class QuizOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomOptionCards(
      optionOne: 'Alxander Fleming',
      optionTwo: 'Alxander\nGraham Bell',
      optionThree: 'Thomas\nAlva Edison',
      optionFour: 'Mars',
      question: 'Which planet in our solar system is known as red planet?',
    );
  }
}
