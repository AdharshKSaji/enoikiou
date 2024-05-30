
import 'package:enoikiou/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: IntroductionScreen(
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                "Drive with distinction.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              bodyWidget: Text(
                "Discover the world, one mile at a time",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              image: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7iGjB040MP_maJsvtP5j8cNRscILjDQcj5hIvXRmmHNUUEbXeBM6nbc4iu5CECWijElc&usqp=CAU",
              )),
          PageViewModel(
              titleWidget: Text("unlocking the world of possibilities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  textAlign: TextAlign.left),
              bodyWidget: Text(
                "Transforming ordinary drives into extraordinary memories",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmx0jkRAnlr8U2Ib6RJxWF7-BJV6l1lyWfg64hKO5_-Y2vOaO4Pf7lDf4-X3B_c4QDQQk&usqp=CAU")),
          PageViewModel(
              titleWidget: Text("Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              bodyWidget: Text(
                "Rent with flair, travel without a care",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              image: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2ezpups915cEwqfk3LZY8voOA-Gp54_48cA&s"))
        ],
        showSkipButton: true,
        skip: Text("Skip"),
        next: Icon(Icons.arrow_forward),
        done: Text("Done"),
        onDone: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false);
        },
        onSkip: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false);
        },
        dotsDecorator: DotsDecorator(
            size: Size.square(10),
            activeSize: Size(20, 10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}