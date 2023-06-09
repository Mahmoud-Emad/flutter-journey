import 'package:flutter/material.dart';

class DiceHelper extends StatefulWidget {
  const DiceHelper({super.key});

  @override
  State<DiceHelper> createState() {
    return _DiceHelperState();
  }
}

class _DiceHelperState extends State<DiceHelper> {
  var diceImage = "assets/images/dice-1.png";

  rollDice() {
    setState(() {
      diceImage = "assets/images/dice-2.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
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
