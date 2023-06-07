import 'package:flutter/material.dart';
import 'package:project1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
            Color.fromARGB(255, 143, 129, 165),
          ],
        ),
      ),
    ),
  );
}
