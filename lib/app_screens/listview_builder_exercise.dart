import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets Exercise')),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          index += 1;
          // ignore: prefer_typing_uninitialized_variables
          var iconStorage;
          String text;
          if (index % 2 == 1) {
            Null;
            text = 'selected';
          } else {
            iconStorage = const Icon(Icons.star);
            text = 'my favorite';
          }
          return ListTile(
            leading: const Icon(Icons.arrow_right),
            trailing: iconStorage,
            title: Text("Problem $index"),
            onTap: (() => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Problem $index is $text')))),
          );
        },
      ),
    );
  }
}
