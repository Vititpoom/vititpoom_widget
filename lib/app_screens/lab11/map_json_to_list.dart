import 'package:flutter/material.dart';

import 'layout_after_press.dart';

class MapToList extends StatefulWidget {
  final int num;
  final Map<dynamic, dynamic> info;
  const MapToList({super.key, required this.num, required this.info});

  @override
  State<MapToList> createState() => _MapToListState();
}

class _MapToListState extends State<MapToList> {
  late String title;
  late String question;
  late String imgURL;
  late List<String> choices;
  late List<bool> correct;
  bool previous = false;
  Widget? nextQuestion;

  @override
  void initState() {
    super.initState();
    title = widget.info[widget.num]['title'];
    question = widget.info[widget.num]['question'];
    imgURL = widget.info[widget.num]['imgURL'];
    choices = widget.info[widget.num]['choices'];
    correct = widget.info[widget.num]['correct'];
    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextQuestion = MapToList(num: widget.num + 1, info: widget.info);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(title)),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question,
              style: const TextStyle(color: Colors.pink, fontSize: 25),
            ),
            SizedBox(
              width: 500,
              height: 300,
              child: Image(image: NetworkImage(imgURL)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        QuestionNextPage(
                            name: choices[0],
                            color: Colors.orangeAccent,
                            correct: correct[0]),
                        QuestionNextPage(
                            name: choices[1],
                            color: Colors.pinkAccent,
                            correct: correct[1])
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        QuestionNextPage(
                            name: choices[2],
                            color: Colors.purpleAccent,
                            correct: correct[2]),
                        QuestionNextPage(
                            name: choices[3],
                            color: Colors.blueAccent,
                            correct: correct[3]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: previous,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Previous'),
                    )),
                Visibility(
                    visible: nextQuestion != null,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                nextQuestion ?? Container())));
                      },
                      child: const Text('Next'),
                    )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
