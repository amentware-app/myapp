import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authmethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //Sign Up
  Future<String> signUpUser({
    required String username,
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty && password.isNotEmpty && username.isNotEmpty) {
        // registering user in auth with email and password
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        String photoUrl =
            "https://firebasestorage.googleapis.com/v0/b/just-food-amentware.appspot.com/o/29084461_5700_2_03%20(1)%20(1)%20(1)%20(1).jpg?alt=media&token=8df69820-70bb-48aa-9b9e-ad454e944f75";
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'username': username,
          'email': email,
          'role': "User",
          "photoUrl": photoUrl,
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

  Future<String> signUpAdmin({
    required String name,
    required String email,
    required String password,
    required String location,
    required String cuisine,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          name.isNotEmpty &&
          location.isNotEmpty &&
          cuisine != "Cuisine Type") {
        // registering user in auth with email and password
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        String photoUrl =
            "https://firebasestorage.googleapis.com/v0/b/just-food-amentware.appspot.com/o/29084461_5700_2_03%20(1)%20(1)%20(1)%20(1).jpg?alt=media&token=8df69820-70bb-48aa-9b9e-ad454e944f75";
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'uid': cred.user!.uid,
          'username': name,
          'email': email,
          'role': "Admin",
          "photoUrl": photoUrl,
          'location': location,
          'cuisine': cuisine
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

  // logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<String> forgetPassword({
    required String email,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty) {
        // reset password
        await _auth.sendPasswordResetEmail(
          email: email,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }
}
