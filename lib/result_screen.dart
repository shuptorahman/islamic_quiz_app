import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
              onPressed: () {},
              child: Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
