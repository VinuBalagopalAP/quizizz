import 'package:centrric_assignment/common_widgets/custom_cards.dart';
import 'package:centrric_assignment/quiz/quiz.dart';

import 'package:flutter/material.dart';

class CustomOptionCards extends StatelessWidget {
  const CustomOptionCards({
    required this.optionOne,
    required this.optionTwo,
    required this.optionThree,
    required this.optionFour,
    required this.question,
  });

  final String optionOne;
  final String optionTwo;
  final String optionThree;
  final String optionFour;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                CustomCards(
                  child: Text(
                    optionOne,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  color: Colors.blue.shade400,
                  borderRadius: 8.0,
                  onPressed: () {},
                  height: 160,
                  width: 160,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CustomCards(
                  child: Text(
                    optionTwo,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  color: Colors.teal.shade300,
                  borderRadius: 8.0,
                  onPressed: () {},
                  height: 160,
                  width: 160,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                CustomCards(
                  child: Text(
                    optionThree,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  color: Colors.orange.shade400,
                  borderRadius: 8.0,
                  onPressed: () {},
                  height: 160,
                  width: 160,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CustomCards(
                  child: Text(
                    optionFour,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  color: Colors.redAccent.shade400,
                  borderRadius: 8.0,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(),
                      ),
                    );
                  },
                  height: 160,
                  width: 160,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
