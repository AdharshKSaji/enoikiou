import 'package:enoikiou/view/home/homescreen/homescreen.dart';
import 'package:enoikiou/view/welcome/welcome.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({super.key, this.islogged = false});
  final bool islogged;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      if (widget.islogged == true) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Welcome(),
            ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Image.asset(
        "assets/enoikiou-high-resolution-logo-white.jpg",
        scale: 25.0,
      )
         
          ),
    );
  }
}