// import 'dart:developer';
// import 'dart:io';

// import 'package:enoikiou/utils/functions'/foi.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_grocery_store_admin/utils/functions/image_functions.dart';

// class FirebaseStorageController extends ChangeNotifier {
//   final storgeRef = FirebaseStorage.instance.ref();
//   static const String baseStoragePath = 'enoikiou';
//   static const String categoryStoragePath =
//       '$baseStoragePath/categories/images/';
//   static const String productStoragePath = '$baseStoragePath/cars/';

//   Future<String?> addCategoryImage(File image, String id) async {
//     var imageRef = storgeRef.child('$categoryStoragePath$id.jpg');
//     Uint8List? imageData = await getCompressedImageData(image);
//     if (imageData == null) {
//       return null;
//     }
//     try {
//       await imageRef.putData(imageData);
//       return await imageRef.getDownloadURL();
//     } on FirebaseException catch (e) {
//       log(e.toString());
//       return null;
//     }
//   }

//   Future<String?> addProductImage(
//       File image, String id, String fileName) async {
//     var imageRef =
//         storgeRef.child('$productStoragePath$id/images/$fileName.jpg');
//     Uint8List? imageData = await getCompressedImageData(
//       image,
//       minWidth: 950,
//       minHeight: 950,
//       quality: 70,
//     );
//     if (imageData == null) {
//       return null;
//     }
//     try {
//       await imageRef.putData(imageData);
//       return await imageRef.getDownloadURL();
//     } on FirebaseException catch (e) {
//       log(e.toString());
//       return null;
//     }
//   }
// }