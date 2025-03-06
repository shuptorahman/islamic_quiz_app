import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 103, 37, 190),
            Color.fromARGB(255, 130, 83, 191),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 200),

            //showing logo
            Image.asset(
              'assets/images/LOGO QUIZ.png',
              height: 250,
              width: 250,
            ),
            SizedBox(height: 40),

            //showing text
            Text(
              "Islamic Quiz App!",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            //showing button
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
