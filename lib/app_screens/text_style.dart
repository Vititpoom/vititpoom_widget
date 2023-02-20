import 'package:flutter/material.dart';

class Myname extends StatelessWidget {
  const Myname({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.redAccent,
        width: 300.0,
        height: 100.0,
        child: const Text(
          "วิทิตภูมิ  คำสงค์",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Prompt',
              fontSize: 30.0,
              color: Colors.black),
        ),
      ),
    );
  }
}
