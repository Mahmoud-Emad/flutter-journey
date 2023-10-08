import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceHelper extends StatefulWidget {
  const DiceHelper({super.key});

  @override
  State<DiceHelper> createState() {
    return _DiceHelperState();
  }
}

class _DiceHelperState extends State<DiceHelper> {
  var currentDiceNumber = 6;

  rollDice() {
    setState(() {
      currentDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceNumber.png",
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text("Roll the dice"),
        )
      ],
    );
  }
}
