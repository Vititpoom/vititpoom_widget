import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab11/next_page.dart';

class QuestionNextPage extends StatefulWidget {
  final String name;
  final Color color;
  final bool correct;

  const QuestionNextPage(
      {super.key,
      required this.name,
      required this.color,
      required this.correct});

  @override
  State<QuestionNextPage> createState() => _QuestionNextPageState();
}

class _QuestionNextPageState extends State<QuestionNextPage> {
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
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         SecondPage(score: widget.correct ? '1' : '0'),
          //   ),
          // );
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
