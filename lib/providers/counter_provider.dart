import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  static int counter = 0;

  increaseCounter() {
    counter++;
    notifyListeners();
  }

  decreaseCounter() {
    counter--;
    notifyListeners();
  }
}
