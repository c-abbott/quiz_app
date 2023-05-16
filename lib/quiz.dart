import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key})

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: Scaffold(
      body: QuizStart(),
    ),
  );
  }
}

