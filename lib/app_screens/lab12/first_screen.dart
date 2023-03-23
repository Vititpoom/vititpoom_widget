import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab11/multi_question.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(top: 200)),
          const SizedBox(
            height: 300,
            width: 300,
            child: Image(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/5705/5705144.png')),
          ),
          const Text(
            'Welcome to the Quiz App',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            'By Vititpoom Khamsong 633040587-7',
            style: TextStyle(fontSize: 25, color: Colors.redAccent),
          ),
          const Padding(padding: EdgeInsets.only(top: 200)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const MultiQuestion())));
              },
              child: const Text('Start')),
        ],
      )),
    );
  }
}
