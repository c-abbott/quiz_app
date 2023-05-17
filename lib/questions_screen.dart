import 'package:flutter/material.dart';
import 'package:quiz_app/question_button.dart';

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
          const Text('The question...'),
          const SizedBox(height: 30),
          QuestionButton(text: 'Answer 1', onPressed: () {}),
          QuestionButton(text: 'Answer 2', onPressed: () {}),
          QuestionButton(text: 'Answer 3', onPressed: () {}),
          QuestionButton(text: 'Answer 4', onPressed: () {}),
        ],
      ),
    );
  }
}
