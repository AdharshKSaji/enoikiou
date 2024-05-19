import 'package:enoikiou/model/carmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Favoritecontroller extends ChangeNotifier {
  final List<CarModel> favorateslist = [];
  List<CarModel> get favorites => favorateslist;
  void toggleFavorite(CarModel product) {
    if (favorateslist.contains(product)) {
      favorateslist.remove(product);
    } else {
      favorateslist.add(product);
    }
    notifyListeners();
  }

  bool isExist(CarModel product) {
    final isExist = favorateslist.contains(product);
    return isExist;
  }

  static Favoritecontroller of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<Favoritecontroller>(
      context,
      listen: listen,
    );
  }
}