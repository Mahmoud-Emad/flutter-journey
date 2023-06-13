import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summery.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You answred X out of Y questions correctly!",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "List of answers and questions...",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Restart Quiz!",
              ),
            )
          ],
        ),
      ),
    );
  }
}
