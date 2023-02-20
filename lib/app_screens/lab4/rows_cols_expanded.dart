import 'package:flutter/material.dart';

import 'image_asset.dart';

class Expandedpage extends StatelessWidget {
  const Expandedpage({super.key});

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
