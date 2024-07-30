import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Communication extends StatefulWidget {
  const Communication({super.key});

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  dynamic _data = {
    "title":
        "Could you please explain the projects you have done during your internship and explain the challenges you faced?",
    "time": "26 July 2024 - 12:40 pm",
    "clicked": false,
    "transcript":
        "A paragraph is defined . Len and appearance do not determine whether a section in a A paragraph is defined . Len and appearance do not determine whether a section in a A paragraph is defined . Len and appearance do not determine whether a section in aA paragraph is defined . Len and appearance do not determine whether a section in aA paragraph is defined . Len and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
  };

  bool isRecording = false;
  bool isSubmit = false;
  bool isShown = false;

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
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container1(),
            (isRecording && isShown) ? Container2() : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget RecordingRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 1, child: RecordIcon()),
            Expanded(flex: 3, child: Text("data")),
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
          width: 0.1,
          color: Color.fromARGB(255, 145, 244, 148),
        ),
      ),
      child: RecordingAnimate(),
    );
  }

  Widget Container2() {
    return Container(
      width: double.infinity,
      height: 450,
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
        children: [RecordingRow(), Transcript(), Submit()],
      ),
    );
  }

  Widget Submit() {
    return Container(
      width: double.infinity,
      height: 62,
      child: Center(
        child: Container(
          width: 90,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () {
              isSubmit = true;
              isShown = false;
              print("done");
              setState(() {});
              isSubmit = false;
            },
            child: Center(
              child: Text(
                "SUBMIT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Transcript() {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 190,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  _data["transcript"],
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Container1() {
    return Container(
      width: double.infinity,
      height: 180,
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
              padding: const EdgeInsets.only(left: 12.0, top: 5.0, bottom: 0.0),
              child: Text(
                _data["title"],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${_data["time"]}",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 185,
                child: InkWell(
                  onTap: () {
                    if (isSubmit) {
                      isShown = false;
                      isRecording = false;
                      print("Cheating");
                    } else {
                      isRecording = true;
                      isShown = true;
                      print("Can start");
                    }
                    setState(() {});
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF05872d),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 20,
                        ),
                        Flexible(
                          child: Text(
                            "START RECORDING",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class RecordingAnimate extends StatefulWidget {
  const RecordingAnimate({super.key});

  @override
  _RecordingAnimateState createState() => _RecordingAnimateState();
}

class _RecordingAnimateState extends State<RecordingAnimate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500), // Adjust the duration here
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return CustomPaint(
                painter: ConcentricCirclesPainter(_animation.value),
                child: const SizedBox(
                  width: 150,
                  height: 150,
                ),
              );
            },
          ),
          const CircleContainer(),
        ],
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      decoration: const BoxDecoration(
        color: Color(0xFF507e62),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.circle, color: Colors.white, size: 8),
            SizedBox(width: 3),
            Text(
              "REC",
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }
}

class ConcentricCirclesPainter extends CustomPainter {
  final double progress;

  ConcentricCirclesPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double maxRadius = size.width / 2;
    const double minStrokeWidth = 0.5;
    const double maxStrokeWidth = 2.0;
    const int numCircles = 10;

    for (int i = 0; i < numCircles; i++) {
      double normalizedValue = (i + progress) / numCircles;
      double radius = maxRadius * normalizedValue;
      double strokeWidth = maxStrokeWidth -
          (normalizedValue * (maxStrokeWidth - minStrokeWidth));

      final Paint paint = Paint()
        ..color = const Color(0xFF507e62).withOpacity(1 - normalizedValue)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;

      canvas.drawCircle(Offset(centerX, centerY), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
