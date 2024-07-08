import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:myapp/firebase/auth/storage_methods.dart';
import 'package:uuid/uuid.dart';

class Foodmethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //Sign Up
  Future<String> addcat(
      {required String catname, required Uint8List? catpic}) async {
    String res = "Some error Occurred";
    try {
      if (catname.isNotEmpty && catpic != null) {
        String catid = const Uuid().v1();
        String photoUrl =
            await StorageMethods().uploadImageToStorage(catid, catpic);

        await _firestore
            .collection('restaurants')
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .set({
          'catid': catid,
          'catname': catname,
          'catpic': photoUrl,
        });
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> adddish({
    required String dishname,
    required Uint8List? dishpic,
    required String dishprice,
    required String dishdec,
    required String catid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishname.isNotEmpty &&
          dishpic != null &&
          dishprice.isNotEmpty &&
          dishdec.isNotEmpty) {
        String dishid = const Uuid().v1();
        String photoUrl =
            await StorageMethods().uploadImageToStorage(dishid, dishpic);

        await _firestore
            .collection('restaurants')
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .collection('dishes')
            .doc(dishid)
            .set({
          'dishid': dishid,
          'dishname': dishname,
          'dishpic': photoUrl,
          'dishprice': dishprice,
          'dishdec': dishdec,
          'catid': catid,
        });
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> addtable({
    required String tablename,
    required Uint8List? tablepic,
  }) async {
    String res = "Some error Occurred";
    try {
      if (tablename.isNotEmpty && tablepic != null) {
        String tableid = const Uuid().v1();
        String photoUrl =
            await StorageMethods().uploadImageToStorage(tableid, tablepic);

        await _firestore.collection('tables').doc(tableid).set({
          'tableid': tableid,
          'tablename': tablename,
          'tablepic': photoUrl,
          'restaurantid': _auth.currentUser!.uid,
        });
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> deletetable({
    required String tableid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (tableid.isNotEmpty) {
        await _firestore.collection('tables').doc(tableid).delete();
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> deletedish({
    required String dishid,
    required String catid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty && catid.isNotEmpty) {
        await _firestore
            .collection("restaurants")
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .collection("dishes")
            .doc(dishid)
            .delete();
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> updatecat(
      {required String catname,
      required String catpicstring,
      required Uint8List? catpic,
      required String catid}) async {
    String res = "Some error Occurred";
    try {
      if (catname.isNotEmpty) {
        String photoUrl = catpicstring;
        if (catpic != null) {
          String picid = const Uuid().v1();
          String photoUrl =
              await StorageMethods().uploadImageToStorage(picid, catpic);
        }

        await _firestore
            .collection('restaurants')
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .update(
          {
            'catid': catid,
            'catname': catname,
            'catpic': photoUrl,
          },
        );
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> updatedish(
      {required String dishname,
      required String dishid,
      required String dishprice,
      required String dishdec,
      required String dishpicstring,
      required Uint8List? dishpic,
      required String catid}) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty &&
          dishprice.isNotEmpty &&
          dishdec.isNotEmpty &&
          catid.isNotEmpty &&
          dishname.isNotEmpty) {
        String photoUrl = dishpicstring;
        if (dishpic != null) {
          String picid = const Uuid().v1();
          String photoUrl =
              await StorageMethods().uploadImageToStorage(picid, dishpic);
        }
        await _firestore
            .collection('restaurants')
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .collection('dishes')
            .doc(dishid)
            .set({
          'dishid': dishid,
          'dishname': dishname,
          'dishpic': photoUrl,
          'dishprice': dishprice,
          'dishdec': dishdec,
          'catid': catid,
        });
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> deletecat({required String catid}) async {
    String res = "Some error Occurred";
    try {
      if (catid.isNotEmpty) {
        await _firestore
            .collection('restaurants')
            .doc(_auth.currentUser!.uid)
            .collection('category')
            .doc(catid)
            .delete();
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }
}
