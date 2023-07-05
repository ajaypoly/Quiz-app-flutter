import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(31, 73, 21, 243),
                Color.fromARGB(221, 114, 36, 203),
              ], begin: Alignment.topCenter, end: Alignment.bottomRight),
            ),
            child: screenWidget),
      ),
    );
  }
}
