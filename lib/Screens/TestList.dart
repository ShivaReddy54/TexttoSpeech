import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestList extends StatefulWidget {
  const TestList({super.key});

  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  List _data = [
    {
      "title":
          "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
      "date": "26 July 2024",
      "Talk Time": "10:15",
      "Confidence": 56,
      "Accuracy": 75,
      "Grammar Accuracy": 56,
      "Sentences": 26
    },
    {
      "title":
          "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
      "date": "26 July 2024",
      "Talk Time": "10:15",
      "Confidence": 56,
      "Accuracy": 75,
      "Grammar Accuracy": 56,
      "Sentences": 26
    },
  ];
  List isClicked = [];

  @override
  void initState() {
    super.initState();
    isClicked = List.filled(_data.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test List"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 30,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return testList(index);
          },
        ),
      ),
    );
  }

  Widget testList(index) {
    return Column(
      children: [
        container1(index),
        isClicked[index] ? container2(index) : SizedBox.shrink()
      ],
    );
  }

  Widget container1(index) {
    return Container(
      width: double.infinity,
      height: 190,
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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            details(index),
            recording(index),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    isClicked[index] = !isClicked[index];
                    setState(() {});
                  },
                  child: Text(
                    "Statistics",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget container2(index) {
    return Container(
      width: double.infinity,
      height: 470,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: details(index),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: recording(index),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 180,
              child: Row(
                children: [
                  Expanded(flex: 1, child: Text("Data statistics")),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          topic(Colors.green, "Confidence", index),
                          topic(Colors.yellow, "Accuracy", index),
                        ],
                      ))
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                width: double.infinity,
                height: 75,
                // color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            Expanded(
                                child: topic2(
                                    Colors.green, "Grammar Accuracy", index)),
                            Expanded(
                                child:
                                    topic2(Colors.green, "Sentences", index)),
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          isClicked[index] = false;
                          setState(() {});
                        },
                        child: Text(
                          "< less",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget topic2(textColor, topic, index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topic,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          textAlign: TextAlign.left,
        ),
        Text(
          "${_data[index][topic]}%",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.green),
        ),
      ],
    );
  }

  Widget topic(iconColor, topic, index) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.circle,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              topic,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            )
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(flex: 1, child: Text("")),
              Expanded(
                flex: 5,
                child: Text(
                  "${_data[index][topic]}%",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget recording(index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 70,
        color: Colors.grey,
      ),
    );
  }

  Widget details(index) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _data[index]["title"],
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_data[index]["date"]),
                  Container(
                    width: 110,
                    child: Row(
                      children: [
                        Text("Talk Time: "),
                        Text(
                          _data[index]["Talk Time"],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
