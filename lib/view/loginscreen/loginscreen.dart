
import 'package:enoikiou/controller/logincontroller.dart';
import 'package:enoikiou/view/home/homescm.dart';
import 'package:enoikiou/view/loginscreen/widgets/forgot.dart';
import 'package:enoikiou/view/register/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class Login extends StatefulWidget {
  
 
  const Login({super.key,});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    var formKey = GlobalKey<FormState>();
      
    return Scaffold(
      
      body: Container(decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage
        ("https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=600"),fit: BoxFit.fill)
      ),
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
                            fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                   
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "  NAME",
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: " USER NAME",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                     
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          hintText: "PASSWORD",
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                     
                    ),
                  ],
                )),
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
                              builder: (context) => HomeScreen()
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
                child: Text("Login",)),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Dont have account",style:TextStyle(color:  Colors.white)),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registeration(),
                          ));
                    },
                    child: Text("SignUP",style:TextStyle(color:  Colors.blue))),
                    TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ));
                    },
                    child: Text("forgot password",style:TextStyle(color:  Colors.blue))),
              ],
            ),
            // SizedBox(height: 10,),
            // Row(children: [
            //    TextButton(
            //         onPressed: () {
            //           Navigator.pushReplacement(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => ForgotPasswordScreen(),
            //               ));
            //         },
            //         child: Text("forgot password",style:TextStyle(color:  Colors.blue))),

            // ],)
          ],
        ),
      ),
    );
  }
}