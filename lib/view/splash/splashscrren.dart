
import 'package:enoikiou/view/welcome/welcome.dart';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Welcome(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        
          child: AnimatedAlign(
            // ignore: dead_code
            alignment: selected ? Alignment.bottomCenter : Alignment.bottomLeft,
            duration: const Duration(seconds: 5),
            curve: Curves.fastOutSlowIn,
            child: Image.asset("assets/enoikiou-high-resolution-logo-white.jpg")
          ),
        ),
      
    );
  }
}