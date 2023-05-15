import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [Color.fromARGB(255, 0, 12, 80), Color.fromARGB(245, 0, 42, 90)]),
      ),
    ),
  );
}
