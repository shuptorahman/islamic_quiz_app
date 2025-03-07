import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/answer_button.dart';
import 'package:islamic_quiz_app/database/question_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          //question goes here
          Text(
            currentQuestion.question,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          //answer buttons below
          AnswerButton(
            answerText:
                currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText:
                currentQuestion.answers[1],
            onTap: () {},
          ),

          AnswerButton(
            answerText:
                currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText:
                currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
