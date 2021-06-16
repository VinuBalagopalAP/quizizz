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
                FadeAnimatedText('3'),
                FadeAnimatedText('2'),
                FadeAnimatedText('1'),
                FadeAnimatedText('Go!'),
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
