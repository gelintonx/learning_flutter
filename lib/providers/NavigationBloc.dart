import 'package:flutter/material.dart';

class NavigationBloc extends ChangeNotifier {
  int _currentIndex = 0;
  bool isOffer = false;
  bool isFood = true;

  int get currentIndex {
    return _currentIndex;
  }

  setCurrentIndex(int i) {
    _currentIndex = i;
    notifyListeners();
  }
}
