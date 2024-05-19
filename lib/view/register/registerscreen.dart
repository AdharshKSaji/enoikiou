

import 'package:enoikiou/controller/registercontroller.dart';
import 'package:enoikiou/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';



class Registeration extends StatefulWidget {
  
  const Registeration({super.key,});

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
 XFile?file;
 var url;
  TextEditingController nameController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    var formKey = GlobalKey<FormState>();
      final providerobj = context.watch<RegistrationScreenController>();
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
                        'Registeration',
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
                          hintText: "  NAME",hintStyle: TextStyle(color: Colors.white),
                          // hintStyle: TextStyle(color: Colors.white),
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
       
            providerobj.isLoading
                ? CircularProgressIndicator():
            OutlinedButton(
                 onPressed: () async {
                      if (nameController.text.isNotEmpty &&
                          passwordcontroller.text.isNotEmpty) {
                        // registration funciton
                        context
                            .read<RegistrationScreenController>()
                            .register(
                                context: context,
                                email: nameController.text,
                                password: passwordcontroller.text)
                            .then((value) {
                          if (value == true) {
                            // login success
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.green,
                                content: Text("Registration Successs")));
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                                (route) => false);
                          } else {
                            
                          }
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Enter a valid email and password")));
                      }
                    },
                    child: Text("Register",style:TextStyle(color:  Colors.white))),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Already have account",style: TextStyle(color: Colors.white),),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text("Login now",style: TextStyle(color: Colors.blue))),
              ],
            )
          ],
        ),
      ),
    );
  }
}