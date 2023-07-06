import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(128, 255, 255, 255),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            "Learn Flutter in a fun way",
            style: GoogleFonts.fasthand(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(66, 219, 202, 202),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Start quiz"),
                Icon(Icons.arrow_circle_right_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
