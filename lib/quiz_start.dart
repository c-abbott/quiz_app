import 'package:flutter/material.dart';

class QuizStart extends StatelessWidget {
  const QuizStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 280,
        ),
        const SizedBox(height: 60),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'ProximaNova',
            color: Color.fromARGB(255, 245, 245, 255),
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 80, 255),
            foregroundColor: const Color.fromARGB(255, 245, 245, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: const Text('Start Quiz'), // Add this line
        ),
      ],
    );
  }
}
