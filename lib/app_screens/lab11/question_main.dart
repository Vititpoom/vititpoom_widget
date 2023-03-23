import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab11/layout_after_press.dart';

class ColorResponsAndNextPage extends StatelessWidget {
  final String title;
  final String question;
  final List choices;
  final List correct;
  final String imageURL;
  const ColorResponsAndNextPage(
      {super.key,
      required this.title,
      required this.question,
      required this.choices,
      required this.correct,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
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
              child: Image(image: NetworkImage(imageURL)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // QuestionNextPage(
                        //     name: choices[0],
                        //     color: Colors.orangeAccent,
                        //     correct: correct[0]),
                        // QuestionNextPage(
                        //     name: choices[1],
                        //     color: Colors.pinkAccent,
                        //     correct: correct[1])
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // QuestionNextPage(
                        //     name: choices[2],
                        //     color: Colors.purpleAccent,
                        //     correct: correct[2]),
                        // QuestionNextPage(
                        //     name: choices[3],
                        //     color: Colors.blueAccent,
                        //     correct: correct[3])
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
