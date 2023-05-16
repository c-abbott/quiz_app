import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 0, 12, 80);
const secondaryColor = Color.fromARGB(245, 0, 42, 90);
const skWhite = Color.fromARGB(255, 245, 245, 255);
const buttonColor = Color.fromARGB(255, 0, 80, 255);

const buttonText = TextStyle(
  fontSize: 20,
  fontFamily: 'ProximaNova',
  color: skWhite,
);

Decoration gradientDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [primaryColor, secondaryColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
