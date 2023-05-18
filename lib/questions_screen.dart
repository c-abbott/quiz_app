import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(color: skWhite),
          ),
          const SizedBox(height: 32),
          AnswerButton(text: currentQuestion.answers[0], onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: currentQuestion.answers[1], onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: currentQuestion.answers[2], onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: currentQuestion.answers[3], onPressed: () {}),
        ],
      ),
    );
  }
}
