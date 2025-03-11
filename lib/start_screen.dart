import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

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
          Text(
            "ISLAMIC QUIZ",
            style: GoogleFonts.lilitaOne(
              fontSize: 28,
              color: const Color.fromARGB(
                212,
                255,
                255,
                255,
              ),
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
              color: const Color.fromARGB(
                255,
                255,
                255,
                255,
              ),
            ),
            onPressed: startQuiz,
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lilitaOne(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
