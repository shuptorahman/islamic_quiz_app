import 'package:flutter/material.dart';
import 'package:islamic_quiz_app/gradient_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(body: GradientContainer()),
    );
  }
}
