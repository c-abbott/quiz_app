import 'package:flutter/material.dart';
import 'package:quiz_app/buttons/start_button.dart';
import 'package:quiz_app/constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
        StartButton(
          text: 'Start Quiz',
          onPressed: startQuiz,
          icon: Icons.play_arrow,
        ),
      ],
    );
  }
}
