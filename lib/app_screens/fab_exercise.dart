import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FloatingButton extends StatefulWidget {
  int count = 30;

  FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets Exercise')),
      body: ListView.builder(
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          index += 1;
          // ignore: prefer_typing_uninitialized_variables
          var iconStorage;
          String text;
          if (index % 2 == 1) {
            text = 'selected';
          } else {
            iconStorage = const Icon(Icons.star);
            text = 'my favorite';
          }
          return ListTile(
            leading: const Icon(Icons.arrow_right),
            trailing: iconStorage,
            title: Text("Problem $index"),
            onTap: (() => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Problem $index is $text'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (() {}),
                )))),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.count++;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Current number problem is ${widget.count}'),
            ));
          });
        },
        tooltip: 'Add One More Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
