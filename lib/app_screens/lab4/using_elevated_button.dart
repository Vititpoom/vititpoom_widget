import 'package:flutter/material.dart';

import 'image_asset.dart';

class UsingElevated extends StatelessWidget {
  const UsingElevated({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.redAccent,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(
              top: 50,
            )),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 20)),
                TextContain('Vititpoom Khamsong'),
                TextContain('633040587-7')
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 20)),
                TextContain('Photo Credit'),
                TextContain('Nunnapat Srithong')
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            const MypicImageAsset(),
            const Padding(padding: EdgeInsets.only(top: 50)),
            ElevatedButton(
              onPressed: (() => showDialog(
                  context: context,
                  builder: (BuildContext context) => const AlertDialog(
                        title: Text('AlertDialog Head'),
                        content: Text('Subline aleart dialog'),
                      ))),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Button',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextContain extends StatelessWidget {
  final String typeText;
  const TextContain(this.typeText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      typeText,
      textDirection: TextDirection.ltr,
      style: const TextStyle(
        decoration: TextDecoration.none,
        fontFamily: 'Prompt',
        fontSize: 25,
        color: Colors.black,
      ),
    ));
  }
}
