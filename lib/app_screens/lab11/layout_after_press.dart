import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vititpoom_widget/app_screens/lab12/provider.dart';

class QuestionNextPage extends StatefulWidget {
  final String name;
  final Color color;
  final bool correct;
  final Widget nextQuestion;

  const QuestionNextPage({
    super.key,
    required this.name,
    required this.color,
    required this.correct,
    required this.nextQuestion,
  });

  @override
  State<QuestionNextPage> createState() => _QuestionNextPageState();
}

class _QuestionNextPageState extends State<QuestionNextPage> {
  bool active = false;
  //int scorecount = 0;
  //Score score = Score(score: scorecount);

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
          if (widget.correct) {
            Provider.of<ScoreProvider>(context, listen: false).countScore(1);
          }
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Score!'),
                  content: widget.correct
                      ? const Text('Congrats, you get 1 point')
                      : const Text('Sorry, you miss it!'),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          //Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => widget.nextQuestion)));
                        },
                        child: const Text('OK'))
                  ],
                );
              });
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
