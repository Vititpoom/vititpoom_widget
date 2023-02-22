import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab10/layout_score.dart';

class ColorRespons extends StatelessWidget {
  const ColorRespons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Layout Flutter Exercise by Vititpoom Khamsong')),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Where is this picture?',
              style: TextStyle(color: Colors.pink, fontSize: 25),
            ),
            const SizedBox(
              width: 500,
              height: 300,
              child: Image(
                  image: NetworkImage(
                      'https://www.latrobe.edu.au/students/opportunities/exchange/partners/images/asia/Chulalongkorn-University.jpg/preview.jpg')),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        QuestionChoice(
                            name: 'Khon Kean University',
                            color: Colors.orangeAccent,
                            correct: false),
                        QuestionChoice(
                            name: 'Chulalongkorn University',
                            color: Colors.pinkAccent,
                            correct: true)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        QuestionChoice(
                            name: 'Chiang Mai University',
                            color: Colors.purpleAccent,
                            correct: false),
                        QuestionChoice(
                            name: 'Mahidol University',
                            color: Colors.blueAccent,
                            correct: false)
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
