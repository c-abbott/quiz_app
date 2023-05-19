import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class StartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  const StartButton({
    required this.text,
    required this.onPressed,
    this.icon = Icons.arrow_right_alt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 60),
        padding: const EdgeInsets.all(16.0),
        backgroundColor: buttonColor,
        foregroundColor: skWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      icon: Icon(icon),
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
