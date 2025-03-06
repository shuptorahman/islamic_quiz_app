import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //showing logo
          Image.asset(
            color: const Color.fromARGB(
              150,
              255,
              255,
              255,
            ),
            'assets/images/LOGO QUIZ.png',

            width: 300,
          ),
          SizedBox(height: 40),

          //showing text
          const Text(
            "Islamic Quiz App!",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          //showing button
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
            label: Text(
              'Start Quiz',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
