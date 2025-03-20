import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/answer_button.dart';
import 'package:islamic_quiz_app/database/question_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    required this.onSelectAnswer,
    super.key,
  });

  final void Function(String answer) onSelectAnswer;
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String onSelectAnswer) {
    widget.onSelectAnswer(onSelectAnswer);
    // currentQuestionIndex =
    //     currentQuestionIndex + 1;

    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //question goes here
            Text(
              currentQuestion.question,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            //answer buttons below
            ...currentQuestion.getShuffledAns().map((
              answer,
            ) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
