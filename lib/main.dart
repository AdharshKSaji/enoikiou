import 'package:enoikiou/controller/logincontroller.dart';
import 'package:enoikiou/controller/registercontroller.dart';
import 'package:enoikiou/view/splash/splashscrren.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options: FirebaseOptions(apiKey:  "AIzaSyB3aePanRIpdLNO8-Dvskr76MV-Js6tEng",
   appId: "1:234432157489:android:5a715cbc3816c2bf410210",
    messagingSenderId: "",
     projectId: "enoikiou",
    storageBucket:  "enoikiou.appspot.com")
 );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginScreenController(),
        )
      ],
      child: MaterialApp(
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SplashScreen();
            } else {
              return SplashScreen();
            }
          },
        ),
      ),
    );
  }
}