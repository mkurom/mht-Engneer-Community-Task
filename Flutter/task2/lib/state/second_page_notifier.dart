import 'package:flutter/material.dart';

class SecondPageNotifier extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter += 10;

    notifyListeners();
  }
}
