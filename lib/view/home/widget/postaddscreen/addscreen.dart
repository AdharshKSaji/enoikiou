import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enoikiou/model/carmodel.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  XFile? file;
  var url;
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController reviewcontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
   TextEditingController categorycontroller = TextEditingController();
   TextEditingController fuelcontroller = TextEditingController();
  TextEditingController transactioncontroller = TextEditingController();
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("Cars");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
           
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: titlecontroller,
              decoration: InputDecoration(
                  label: Text("Enter title"), border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))
                  ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: reviewcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text("Enter review"), border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))
                  ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: descriptioncontroller,
              decoration: InputDecoration(
                  label: Text("Enter description"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))
                  ),
            ),
           
            SizedBox(height: 10),
            TextFormField(
              controller: pricecontroller,
              decoration: InputDecoration(
                  label: Text("Enter price"), border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: categorycontroller,
              decoration: InputDecoration(
                  label: Text("Enter category"), border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            ),
             SizedBox(height: 10),
            TextFormField(
              controller: descriptioncontroller,
              decoration: InputDecoration(
                  label: Text("Enter fuel type"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            ),
             SizedBox(height: 10),
            TextFormField(
              controller: descriptioncontroller,
              decoration: InputDecoration(
                  label: Text("Enter transaction type"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 10),
             InkWell(
                onTap: () async {
                  file =
                      await ImagePicker().pickImage(source: ImageSource.gallery);
                  setState(() {});
                  if (file != null) {
                    final storageref = FirebaseStorage.instance.ref();
                    var imageref = storageref.child("image");
                    var uploadref = imageref.child(file!.name);
                    await uploadref.putFile(File(file!.path));
                    var url = await uploadref.getDownloadURL();
                    log(url.toString());
                  }
                },
                child: file != null
                ? Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                  child: Image(image: FileImage(File(file!.path))),
                ):
                Container(
                  height: 100,
                  width: 100,
                    color: Colors.grey,
                  
                  
                  child: Icon(Icons.collections_bookmark),
                )
                    // ? CircleAvatar(
                    //     radius: 50,
                    //     backgroundImage: FileImage(File(file!.path)),
                    //   )
                    // : CircleAvatar(
                    //     radius: 50,
                    //     child: Icon(Icons.collections_bookmark),
                    //   )
                      ),
           
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  collectionRef.add(CarModel(
                              title: titlecontroller.text,
                              review: reviewcontroller.text,
                              description: descriptioncontroller.text,
                              image: url.toString(),
                              price:int.parse(pricecontroller.text),
                              fuel: fuelcontroller.text,
                              transaction: transactioncontroller.text,
                              category: categorycontroller.text)
                          .toMap()
                     
                      );
                },
                child: Text("Add New Post")),
          ]),
        ),
      ),
    );
  }
}