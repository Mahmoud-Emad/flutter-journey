import 'package:flutter/material.dart';

import 'dice_helper.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 231, 231),
      ),
      child: const Center(
        child: DiceHelper(),
      ),
    );
  }
}
