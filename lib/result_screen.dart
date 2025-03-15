import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/database/question_data.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.choosenAnswers,
  });

  List<String> choosenAnswers;
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
        'correct_answer':
            questions[i].question[0],
        'user_answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              "You answered X out Y questions correctly",
            ),
            SizedBox(height: 30),
            Text("List of answers and question"),
            SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
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
