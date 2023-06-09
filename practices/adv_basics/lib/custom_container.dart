import 'package:flutter/material.dart';

import 'intro_screen.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 64, 32, 122),
      ),
      child: const Center(
        child: IntroScreen(),
      ),
    );
  }
}
