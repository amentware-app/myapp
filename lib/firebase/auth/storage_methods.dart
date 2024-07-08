import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

class StorageMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // adding image to firebase storage
  Future<String> uploadImageToStorage(String catname, Uint8List file) async {
    // creating location to our firebase storage
    try {
      Reference ref =
          _storage.ref().child(catname).child(_auth.currentUser!.uid);

      // putting in uint8list format -> Upload task like a future but not future
      UploadTask uploadTask = ref.putData(file);

      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      print("success");
      return downloadUrl;
    } catch (error) {
      print(error.toString());
    }
    return "failed";
  }
}
