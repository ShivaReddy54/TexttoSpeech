import 'package:flutter/material.dart';

class TestReport extends StatefulWidget {
  const TestReport({super.key});

  @override
  State<TestReport> createState() => _Screen1State();
}

class _Screen1State extends State<TestReport> {
  List _data = [
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
    {
      "title":
          "Could you Please explain the projects you have done during your career and provide detailed descriptions of each one?",
      "date": "26/02/24",
      "Condidence": 56,
      "Accuracy": 86,
      "Words": 550,
      "Sentences": 28
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Reports",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return createBox(index);
          },
        ),
      ),
    );
  }

  Widget createBox(index) {
    return Container(
      width: double.infinity,
      // height: 100,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 3, spreadRadius: -5, offset: Offset(0, 5)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    _data[index]["title"],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  _data[index]["date"],
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                topicsData(index, "Condidence"),
                topicsData(index, "Accuracy"),
                topicsData(index, "Words"),
                topicsData(index, "Sentences"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget topicsData(index, topic) {
    return Column(
      children: [
        Text(
          topic,
          style: TextStyle(
              color: Colors.yellow[700],
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        Text(
          (topic[0] == 'C' || topic[0] == "A")
              ? "${_data[index][topic]}%"
              : "${_data[index][topic]}",
          style: TextStyle(
              fontSize: 16, color: Colors.green, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
