import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminController with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
   bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> login(String email, String password) async {
    _setLoading(true);
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null && email == 'admin@gmail.com') {
        // Successfully logged in as admin
      } else {
        throw FirebaseAuthException(code: 'invalid-admin', message: 'Invalid admin credentials');
      }
    } on FirebaseAuthException catch (e) {
      throw e;
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
