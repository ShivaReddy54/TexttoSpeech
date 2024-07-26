import 'package:flutter/material.dart';
import 'package:texttospeech/Screens/Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text To Speech',
      home: Screen1(),
    );
  }
}
