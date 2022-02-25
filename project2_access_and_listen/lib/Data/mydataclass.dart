import 'package:flutter/cupertino.dart';

class DataClass extends ChangeNotifier {
  int number = 0;

  increaseNumber() {
    number = number + 1;
    notifyListeners();
  }

  decreaseNumber() {
    number = number - 1;
    notifyListeners();
  }
}
