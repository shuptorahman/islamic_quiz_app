import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/start_screen.dart';
//author:Shupto Rahman, date:06/03/2025

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: StartScreen(),
        ),
      ),
    ),
  );
}
