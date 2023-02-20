import 'package:flutter/material.dart';

class StackAndCard extends StatelessWidget {
  const StackAndCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0.6, 0.6),
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://preview.redd.it/c6m2auc0hbr41.jpg?auto=webp&s=d0595501093955f4a25d9132f16edce55be207bc'),
                  radius: 100,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black45),
                  child: const Text(
                    'My Capybara',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Card(
              child: Column(
                children: const [
                  Divider(),
                  ListTile(
                    title: Text('Capy'),
                    subtitle: Text('Bankok, Thailand, 10205'),
                    leading: Icon(
                      Icons.home,
                      color: Colors.redAccent,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('(08x) xxx xxxx'),
                    //subtitle: Text('Bankok, Thailand, 10205'),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.redAccent,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('capy_smart@zoo.com'),
                    //subtitle: Text('Bankok, Thailand, 10205'),
                    leading: Icon(
                      Icons.mail,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border_outlined),
              ],
            )
          ],
        ),
      ),
    );
  }
}
