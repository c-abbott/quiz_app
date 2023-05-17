import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuestionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const QuestionButton(
      {required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(300, 20), // Set the minimum size here
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 16.0), // Reduce the vertical padding
        backgroundColor: buttonColor,
        foregroundColor: skWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          fontFamily: 'ProximaNova',
          color: skWhite,
        ),
      ),
    );
  }
}
