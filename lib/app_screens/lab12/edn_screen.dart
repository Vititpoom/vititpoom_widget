import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vititpoom_widget/app_screens/lab12/provider.dart';

import 'first_screen.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({super.key});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ScoreProvider>(builder: (context, scoreProvider, child) {
            return Text(
              'Your Score is ${scoreProvider.currentScore}',
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            );
          }),
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
