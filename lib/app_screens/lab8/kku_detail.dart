import 'package:flutter/material.dart';

import 'kku_data_model.dart';

class KKUDetail extends StatelessWidget {
  final KKUDataModel kkuDataModel;
  const KKUDetail({
    Key? key,
    required this.kkuDataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kkuDataModel.facName)),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            SizedBox(
              width: 200,
              height: 20,
              child: ElevatedButton(
                onPressed: () {},
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      //color: Colors.black.withAlpha(100),
                      borderRadius: BorderRadius.circular(3)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(kkuDataModel.urlFac),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Text(kkuDataModel.thaiName,
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Prompt',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black)),
            Image(image: NetworkImage(kkuDataModel.linkImage))
          ],
        ),
      ),
    );
  }
}
