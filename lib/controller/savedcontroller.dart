import 'package:flutter/material.dart';

class SavedController extends ChangeNotifier {
  List<String> savedItems = [];

  void addItem(String item) {
    savedItems.add(item);
    notifyListeners();
  }

  void removeItem(String item) {
    savedItems.remove(item);
    notifyListeners();
  }
}
