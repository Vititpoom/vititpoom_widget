import 'package:flutter/material.dart';

class ResponsiveQuestion extends StatelessWidget {
  const ResponsiveQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenW <= 600
          ? AppBar(
              title:
                  const Text('Layout Flutter Exercise by Vititpoom Khamsong'))
          : null,
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
              width: 300,
              height: 150,
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
