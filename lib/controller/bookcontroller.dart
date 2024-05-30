import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:enoikiou/model/carmodel.dart';

class CarBookingController extends ChangeNotifier {
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
    return favorateslist.contains(product);
  }

  double totalPrice() {
    return favorateslist.fold(0.0, (sum, item) => sum + item.price);
  }

  static CarBookingController of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CarBookingController>(
      context,
      listen: listen,
    );
  }
}
