import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/database/question_data.dart';
import 'package:islamic_quiz_app/question_screen.dart';
import 'start_screen.dart';
import 'package:islamic_quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'HomeScreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionScreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'ResultScreen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'QuestionScreen') {
      screenWidget = QuizScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    void restartQuiz() {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'QuestionScreen';
      });
    }

    if (activeScreen == 'ResultScreen') {
      screenWidget = ResultScreen(
        choosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          child: screenWidget,
        ),
      ),
    );
  }
}
