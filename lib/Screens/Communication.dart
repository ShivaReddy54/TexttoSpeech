import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _Screen2State();
}

class _Screen2State extends State<Communication> {
  List _data = [
    {
      "title":
          "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
      "time": "26 July 2024 - 12:40 pm",
      "clicked": false,
      "transcript":
          "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
    },
    {
      "title":
          "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
      "time": "26 July 2024 - 12:40 pm",
      "clicked": false,
      "transcript":
          "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long."
    },
    {
      "title":
          "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
      "time": "26 July 2024 - 12:40 pm",
      "clicked": false,
      "transcript":
          "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long."
    },
  ];

  List isClicked = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isClicked = List.filled(_data.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Communication"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Test(index);
              }),
        ));
  }

  Widget Test(index) {
    return Column(
      children: [
        Container1(index),
        isClicked[index] ? Container2(index) : SizedBox.shrink()
      ],
    );
  }

  Widget Container2(dynamic index) {
    return Container(
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 3, spreadRadius: -5, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          RecordingRow(),
          Transcript(index),
        ],
      ),
    );
  }

  Widget Transcript(index) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Transcript",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget RecordingRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 120,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 3, child: RecordIcon()),
            Expanded(flex: 3, child: Text("data"))
          ],
        ),
      ),
    );
  }

  Widget RecordIcon() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 0.1, color: Color.fromARGB(255, 145, 244, 148))),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 0.3, color: Color.fromARGB(255, 79, 234, 85))),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 0.5, color: Color.fromARGB(255, 73, 253, 79))),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 0.7, color: Color.fromARGB(255, 6, 236, 13))),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.white,
                ),
                Text(
                  "Rec",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Container1(index) {
    return Container(
      width: double.infinity,
      height: 160,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 3, spreadRadius: -5, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _data[index]["title"],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${_data[index]["time"]}",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    isClicked[index] = !isClicked[index];
                    setState(() {});
                  },
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF05872d),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                        Text(
                          "START RECORDING",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        ],
      ),
    );
  }
}
