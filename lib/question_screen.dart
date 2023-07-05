import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import './data/question.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            currentQuestion.text,
            style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answer.map((item) {
            return AnswerButton(answerText: item , onTap: () {});
            
          },)


        ],
      ),
    );
  }
}
