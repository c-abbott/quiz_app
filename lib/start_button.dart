import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class StartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const StartButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 60), // Set the minimum size here
        padding: const EdgeInsets.all(16.0), // And add padding if needed
        backgroundColor: buttonColor,
        foregroundColor: skWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'ProximaNova',
          color: skWhite,
        ),
      ),
    );
  }
}
