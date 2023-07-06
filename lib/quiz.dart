import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/results_screen.dart';
import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers=[];
        activeScreen = 'result-screen';

      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
if (activeScreen =='result-screen'){
screenWidget =const ResultScreen();

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
