import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/custom_button.dart';

class QuizStart extends StatelessWidget {
  const QuizStart({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: gradientDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way!',
            style: buttonText,
          ),
          const SizedBox(height: 30),
          CustomButton(
            text: 'Start Quiz',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
