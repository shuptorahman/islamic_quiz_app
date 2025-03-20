import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_quiz_app/database/question_data.dart';
import 'package:islamic_quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.choosenAnswers,required this.onRestart,
  });

  final void Function() onRestart;

  final List<String> choosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (
      var i = 0;
      i < choosenAnswers.length;
      i++
    ) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers =
        summaryData.where((data) {
          return data['user_answer'] ==
              data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAnswers out $numTotalQuestions questions correctly",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color.fromARGB(
                  255,
                  201,
                  199,
                  200,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionSummary(
              summaryData: summaryData,
            ),
            SizedBox(height: 30),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.refresh),
              onPressed: onRestart,
              label: Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
