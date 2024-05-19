import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
   showSnackbar(String message) {
    Get.snackbar(
      'Message',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey[800],
      colorText: Colors.white,
      duration: Duration(seconds: 3),
      
    );
    update();
  }

   showBottomSheet(String message) {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            message,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      backgroundColor: Colors.grey[800],
      barrierColor: Colors.black.withOpacity(0.6),
    );
  }
}