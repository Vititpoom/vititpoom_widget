import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Exercise'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          ListTile(
              title: const Text('Engineering'),
              leading: const Icon(Icons.engineering),
              trailing: const Icon(Icons.star),
              onTap: (() => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('EN'))))),
          ListTile(
            title: const Text('Agriculture'),
            leading: const Icon(Icons.agriculture),
            onTap: (() => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('AG')))),
          ),
          ListTile(
            title: const Text('Architecture'),
            leading: const Icon(Icons.architecture),
            onTap: (() => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('AR')))),
          )
        ],
      ),
    );
  }
}
