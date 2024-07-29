import 'package:flutter/material.dart';
import 'package:texttospeech/Screens/Communication.dart';
import 'package:texttospeech/Screens/TestList.dart';
import 'package:texttospeech/Screens/TestReports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text To Speech',
      debugShowCheckedModeBanner: false,
      home: TestList(),
    );
  }
}
