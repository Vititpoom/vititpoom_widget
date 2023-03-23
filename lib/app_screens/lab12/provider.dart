import 'package:flutter/widgets.dart';

class ScoreProvider extends ChangeNotifier {
  int _scoreCounter = 0;
  int get currentScore => _scoreCounter;

  set currentScore(int score) {
    _scoreCounter = score;
    debugPrint('$_scoreCounter');
    //notifyListeners();
  }

  void countScore(int score) {
    _scoreCounter += score;
    debugPrint('$_scoreCounter');
    notifyListeners();
  }
}
