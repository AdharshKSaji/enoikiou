import 'package:enoikiou/controller/logincontroller.dart';
import 'package:enoikiou/view/home/homescreen/homescreen.dart';
import 'package:enoikiou/view/loginscreen/widgets/forgot.dart';
import 'package:enoikiou/view/register/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body:Container(
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage
        ("https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=600"),fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: "Username",
                            // hintStyle: TextStyle(color: Colors.white),
                            labelText: "E- mail or Phone",
                            // labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                            hintText: "Password",
                            // hintStyle: TextStyle(color: Colors.white),
                            labelText: "Password",
                            // labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ],
                  )),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ));
                      },
                      child: Text("Forgot password")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () async {
                    if (nameController.text.isNotEmpty &&
                        passwordcontroller.text.isNotEmpty) {
                      // registration funciton
                      context
                          .read<LoginScreenController>()
                          .onLogin(
                              context: context,
                              email: nameController.text,
                              password: passwordcontroller.text)
                          .then((value) {
                        if (value == true) {
                          // login success
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.green,
                              content: Text("Login Successs")));
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                              (route) => false);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Registration Failed")));
                        }
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Enter a valid email and password")));
                    }
                  },
                  child: Text("Login")),
              SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Dont have account"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterationScreen(),
                            ));
                      },
                      child: Text("SignUP")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
