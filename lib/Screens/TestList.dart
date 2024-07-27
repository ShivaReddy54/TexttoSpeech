import 'package:flutter/material.dart';

class TestList extends StatefulWidget {
  const TestList({super.key});

  @override
  State<TestList> createState() => _Screen3State();
}

class _Screen3State extends State<TestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test List"),
      ),
      body: Center(
        child: WordCounter(words: 556),
      ),
    );
  }
}

class WordCounter extends StatelessWidget {
  final int words;

  WordCounter({required this.words});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          value: 1.0,
          strokeWidth: 10,
          backgroundColor: Colors.grey[300],
        ),
        CircularProgressIndicator(
          value: 0.75,
          strokeWidth: 10,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          backgroundColor: Colors.yellow,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$words',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Words',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
