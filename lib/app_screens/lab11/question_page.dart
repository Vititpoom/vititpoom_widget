import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab12/edn_screen.dart';
import 'package:vititpoom_widget/app_screens/lab12/first_screen.dart';

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
  bool home = true;
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
    if (widget.num == 1) {
      setState(() {
        home = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
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
                          correct: correct[0],
                          nextQuestion: nextQuestion ?? const EndScreen(),

                          //score: score + 1,
                        ),
                        QuestionNextPage(
                          name: choices[1],
                          color: Colors.pinkAccent,
                          correct: correct[1],
                          nextQuestion: nextQuestion ?? const EndScreen(),

                          //score: score + 1
                        )
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
                          correct: correct[2],
                          nextQuestion: nextQuestion ?? const EndScreen(),

                          //score: score + 1
                        ),
                        QuestionNextPage(
                          name: choices[3],
                          color: Colors.blueAccent,
                          correct: correct[3],
                          nextQuestion: nextQuestion ?? const EndScreen(),

                          //score: score + 1
                        ),
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
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Previous'),
                    )),
                Visibility(
                    visible: home,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: const Text('home'),
                    )),
                Visibility(
                    visible: nextQuestion != null,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
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

  Widget restart() {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Your total score is ',
            style: TextStyle(fontSize: 40),
          ),
          const Text(
            'I can not do this',
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: ((context) => const FirstScreen())));
            },
            child: const Text('Restart'),
          ),
        ],
      )),
    );
  }
}
