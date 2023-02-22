import 'package:flutter/material.dart';

class QuestionChoice extends StatefulWidget {
  final String name;
  final Color color;
  final bool correct;

  const QuestionChoice(
      {super.key,
      required this.name,
      required this.color,
      required this.correct});

  @override
  State<QuestionChoice> createState() => _QuestionChoiceState();
}

class _QuestionChoiceState extends State<QuestionChoice> {
  bool active = false;

  void _handleTap() {
    setState(() {
      active = !active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: GestureDetector(
        onTap: () {
          _handleTap();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: widget.correct
                  ? const Text('Your Score is 1')
                  : const Text('Your Score is 0'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: (() {}),
              )));
        },
        child: Card(
          color: active
              ? (active && widget.correct
                  ? Colors.greenAccent
                  : Colors.redAccent)
              : widget.color,
          child: Center(
            child: Text(widget.name),
          ),
        ),
      ),
    );
  }
}
