

import 'package:enoikiou/controller/registercontroller.dart';
import 'package:enoikiou/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';



class Registeration extends StatefulWidget {
  const Registeration({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
//                     Row(mainAxisAlignment: MainAxisAlignment.center,
//                     children: [InkWell(onTap: () async {file=await ImagePicker().
//                     pickImage(source: ImageSource.camera);
//                     setState(() {});
                      
// if (file !=null) 
// {
//   // root reference
//   final storageRef=FirebaseStorage.instance.ref();
//   // createa file inside root
//   var imageRef =storageRef.child("image");
//    // create a reference to which the image should be upload
//    var uploadRef=imageRef.child(file!.name);
//    await uploadRef.putFile(File(file!.path));
//    var url=await uploadRef.getDownloadURL();
//    log(url.toString());
   
// }    
//                     },child: file!=null?CircleAvatar(
//                       radius: 50,backgroundImage: FileImage(File(file!.path)),
//                      ) : CircleAvatar(radius: 50,child: Icon(Icons.person)
//                      ) )
//                      ],
//                   ),
                    Container(

                      child: Text(
                        'Registeration',
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
                          hintText: "  NAME",
                          // hintStyle: TextStyle(color: Colors.white),
                          labelText: " USER NAME",
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
                          hintText: "PASSWORD",
                          // hintStyle: TextStyle(color: Colors.white),
                          labelText: "PASSWORD",
                          // labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                     
                    ),
                  ],
                )),
//             SizedBox(
//               height: 20,
//             ),
//              SizedBox(height: 16),
//              SizedBox(height: 10,),
//              OutlinedButton(onPressed: () {
//               if (user != null) {
//     for (final providerProfile in user.providerData) {
//         // ID of the provider (google.com, apple.com, etc.)
//         final provider = providerProfile.providerId;

//         // UID specific to the provider
//         final uid = providerProfile.uid;

//         // Name, email address, and profile photo URL
//         final name = providerProfile.displayName;
//         final emailAddress = providerProfile.email ;
       
//     }
// }
               
//              }, child: Text("data")),
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
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //     backgroundColor: Colors.red,
                            //     content: Text("Registration Failed")));
                          }
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Enter a valid email and password")));
                      }
                    },
                    child: Text("Register")),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Already have account"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text("Login now")),
              ],
            )
          ],
        ),
      ),
    );
  }
}