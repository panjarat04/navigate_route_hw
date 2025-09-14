import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int _count2 = 0;
  int get count => _count;
  int get count2 => _count2;
  String? _message;
  String get message => _message ?? '';
  void increment() {
    _count++;
    _count2 = _count2 + 2;
    notifyListeners();
  }

  void decrement(int val) {
    _count = _count - val;
    _count2 = _count2 - val;
    notifyListeners();
  }

  void setMessage(String msg) {
    _message = msg;
    notifyListeners();
  }
}
