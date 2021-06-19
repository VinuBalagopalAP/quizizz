import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedCountDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 70.0,
            fontWeight: FontWeight.bold,
          ),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText('3'),
                ScaleAnimatedText('2'),
                ScaleAnimatedText('1'),
                ScaleAnimatedText('Go!'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
      ),
    );
  }
}
