import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: skWhite,
        ),
        const SizedBox(height: 60),
        const Text(
          'Learn Flutter the fun way!',
          style: buttonText,
        ),
        const SizedBox(height: 60),
        CustomButton(
          text: 'Start Quiz',
          onPressed: () {},
        ),
      ],
    );
  }
}
