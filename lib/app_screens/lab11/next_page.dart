import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String score;
  const SecondPage({super.key, required this.score});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score Report'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Yoyr scor is ${widget.score}',
              style: const TextStyle(color: Colors.blue),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
