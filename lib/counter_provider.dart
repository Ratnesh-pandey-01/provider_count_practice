import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //data
  int _count = 0;
  // set,get,add
  void increment() {
    _count++;
    notifyListeners();
  }

  //get,fetch data
  getValue() {
    return _count;
  }
}
