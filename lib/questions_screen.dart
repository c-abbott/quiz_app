import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(color: skWhite),
          ),
          const SizedBox(height: 32),
          AnswerButton(text: 'Answer 1', onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: 'Answer 2', onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: 'Answer 3', onPressed: () {}),
          const SizedBox(height: 16),
          AnswerButton(text: 'Answer 4', onPressed: () {}),
        ],
      ),
    );
  }
}
