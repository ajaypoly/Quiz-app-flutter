import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          const SizedBox(
            height: 70,
          ),
          const Text( 
            "Learn Flutter in fun way",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30,),
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(66, 219, 202, 202)
          ), child: const Text("Start quiz"))
        ],
      ),
    );
  }
}
