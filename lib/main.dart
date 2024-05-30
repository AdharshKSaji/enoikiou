
import 'package:enoikiou/controller/bookcontroller.dart';
import 'package:enoikiou/controller/favoriecontroller.dart';
import 'package:enoikiou/controller/logincontroller.dart';
import 'package:enoikiou/controller/registercontroller.dart';
import 'package:enoikiou/firebase_options.dart';
import 'package:enoikiou/view/splash/splashscrren.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CarBookingController(),
        ),
        ChangeNotifierProvider(
          create: (context) => Favoritecontroller(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SplashScreen(
                islogged: true,
              );
            } else {
              return SplashScreen(
                islogged: false,
              );
            }
          },
        ),
      ),
    );
  }
}
