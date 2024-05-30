// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:enoikiou/model/carmodel.dart';


// class CarController {
//   final CollectionReference carCollection = FirebaseFirestore.instance.collection('cars');

//   Future<void> addCar(CarModel car) async {
//     await carCollection.add(car.toJson());
//   }

//   Future<List<CarModel>> getCars(String category) async {
//     QuerySnapshot querySnapshot = await carCollection.where('category', isEqualTo: category).get();
//     return querySnapshot.docs.map((doc) => CarModel.fromJson(doc.data() as Map<String, dynamic>)).toList();
//   }

//   Future<void> updateCar(String id, CarModel car) async {
//     await carCollection.doc(id).update(car.toJson());
//   }

//   Future<void> deleteCar(String id) async {
//     await carCollection.doc(id).delete();
//   }
// }
