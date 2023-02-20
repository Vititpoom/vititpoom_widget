import 'package:flutter/material.dart';

class LayoutFlutter extends StatelessWidget {
  const LayoutFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Layout Flutter Exercise by Vititpoom Khamsong')),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Where is this picture?',
              style: TextStyle(color: Colors.pink, fontSize: 25),
            ),
            const SizedBox(
              width: 250,
              height: 100,
              child: Image(
                  image: NetworkImage(
                      'https://image.bangkokbiznews.com/uploads/images/md/2022/09/IPqlWjW2N71GIwfSpWbz.webp?x-image-process=style/LG')),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizeBoxTemplate(
                          name: Text('Khon Kean University'),
                          color: Colors.orange,
                        ),
                        SizeBoxTemplate(
                          name: Text('Chulalongkorn University'),
                          color: Colors.pinkAccent,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizeBoxTemplate(
                          name: Text('Chiang Mai University'),
                          color: Colors.purple,
                        ),
                        SizeBoxTemplate(
                          name: Text('Mahidol University'),
                          color: Colors.blueAccent,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SizeBoxTemplate extends StatelessWidget {
  final Text name;
  final Color color;

  const SizeBoxTemplate({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: Card(
        color: color,
        child: Center(
          child: name,
        ),
      ),
    );
  }
}
