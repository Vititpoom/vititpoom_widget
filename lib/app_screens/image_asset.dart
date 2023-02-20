import 'package:flutter/material.dart';

class MypicImageAsset extends StatelessWidget {
  const MypicImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/mypic.jpg");
    Image image = Image(
      image: assetImage,
      width: 300,
      height: 250,
    );
    return Container(
      child: image,
    );
  }
}
