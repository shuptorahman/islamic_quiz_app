import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
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
            "Question 1",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          //answer buttons below
          AnswerButton(
            answerText: "answerText 1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "answerText 2",
            onTap: () {},
          ),

          AnswerButton(
            answerText: "answerText 3 ",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "answerText 4",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
