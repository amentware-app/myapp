import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

class OrderAndCart {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> addtocart({
    required String dishid,
    required String dishname,
    required String dishprice,
    required String resid,
    required String dishpic,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty &&
          dishname.isNotEmpty &&
          dishprice.isNotEmpty &&
          resid.isNotEmpty &&
          dishpic.isNotEmpty) {
        await _firestore.collection('cart').doc(_auth.currentUser!.uid).set({
          'resid': resid,
          'uid': _auth.currentUser!.uid,
        }, SetOptions(merge: true));

        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes')
            .doc(dishid)
            .set({
          'dishid': dishid,
          'dishname': dishname,
          'dishprice': dishprice,
          'dishpic': dishpic,
          'resid': resid,
          'quantity': FieldValue.increment(1),
        }, SetOptions(merge: true));

        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> deletefromcart({
    required String dishid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty) {
        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes')
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

  Future<String> updatequantity({
    required String dishid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty) {
        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes')
            .doc(dishid)
            .set({
          'quantity': FieldValue.increment(1),
        }, SetOptions(merge: true));
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> placeorder({
    required String resid,
    required String total,
    required String tableid,
    required String tablename,
  }) async {
    String res = "Some error Occurred";
    try {
      if (resid.isNotEmpty && total.isNotEmpty) {
        String orderid = const Uuid().v1();
        var datenow = DateTime.now();
        String ordernumber =
            DateFormat('yyMMddHHss').format(datenow).toString();
        String date =
            DateFormat('yyyy-MM-dd HH:mm:ss').format(datenow).toString();
        await _firestore.collection('orders').doc(orderid).set({
          'resid': resid,
          'uid': _auth.currentUser!.uid,
          'totalprice': total,
          'orderid': orderid,
          'date': date,
          'status': "Received",
          'tableid': tableid,
          'tablename': tablename,
          'ordernumber': ordernumber,
        }, SetOptions(merge: true));

        // Get all documents from the source collection
        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes')
            .get()
            .then((QuerySnapshot querySnapshot) {
          // Create a batch to write all documents to the destination collection
          WriteBatch batch = _firestore.batch();

          querySnapshot.docs.forEach((DocumentSnapshot sourceDoc) {
            if (sourceDoc.exists) {
              // Create a new document in the destination collection with the same data as the source document
              DocumentReference destDocRef = _firestore
                  .collection('orders')
                  .doc(orderid)
                  .collection('dishes')
                  .doc(sourceDoc.id);
              batch.set(destDocRef, sourceDoc.data());
            }
          });

          // Commit the batch to write all documents to the destination collection
          batch.commit();
        });
        /*

        final CollectionReference collectionRef = FirebaseFirestore.instance
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes');

        final QuerySnapshot querySnapshot = await collectionRef.get();
        final List<DocumentSnapshot> documents = querySnapshot.docs;

        for (var document in documents) {
          await document.reference.delete();
        }
        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .delete();
*/
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> ratedish({
    required String dishid,
    required String dishname,
    required String dishpic,
    required String dishprice,
    required String rating,
  }) async {
    String res = "Some error Occurred";
    try {
      if (dishid.isNotEmpty &&
          dishname.isNotEmpty &&
          dishprice.isNotEmpty &&
          dishpic.isNotEmpty &&
          rating.isNotEmpty) {
        await _firestore.collection('rating').doc(dishid).set({
          'no_of_rating': FieldValue.increment(1),
          'dishid': dishid,
          'dishname': dishname,
          'dishprice': dishprice,
          'dishpic': dishpic,
          'total_rating': FieldValue.increment(double.parse(rating)),
          'no_of_orders': FieldValue.increment(1),
        }, SetOptions(merge: true));

        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .collection('dishes')
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

  Future<String> updatestatus({
    required String orderid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (orderid.isNotEmpty) {
        await _firestore.collection('orders').doc(orderid).set({
          'status': "Delivered",
        }, SetOptions(merge: true));
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> deleteorder({
    required String orderid,
  }) async {
    String res = "Some error Occurred";
    try {
      if (orderid.isNotEmpty) {
        final CollectionReference collectionRef = FirebaseFirestore.instance
            .collection('orders')
            .doc(orderid)
            .collection('dishes');

        final QuerySnapshot querySnapshot = await collectionRef.get();
        final List<DocumentSnapshot> documents = querySnapshot.docs;

        for (var document in documents) {
          await document.reference.delete();
        }
        await _firestore
            .collection('cart')
            .doc(_auth.currentUser!.uid)
            .delete();
        await _firestore.collection('orders').doc(orderid).delete();
        res = 'success';
      } else {
        res = "Please enter all the fields";
      }
    } catch (error) {
      return error.toString();
    }
    return res;
  }

  Future<String> updaterating() async {
    String res = "Some error Occurred";
    try {
      final CollectionReference collection =
          FirebaseFirestore.instance.collection('rating');

      QuerySnapshot querySnapshot = await collection.get();
      List<QueryDocumentSnapshot> documents = querySnapshot.docs;

      for (QueryDocumentSnapshot document in documents) {
        // Get the variables from each document
        int noOfRatings = document.get('no_of_rating') ?? 0;
        double totalRatings = document.get('total_rating') ?? 0.0;
        String dishid = document.get('dishid');

        // Calculate the average rating
        double averageRating = totalRatings / noOfRatings;
        String formattedNum = averageRating.toStringAsFixed(2);
        double rating = double.parse(formattedNum);

        // Update the document with the average rating
        await collection
            .doc(dishid)
            .set({'overall_rating': rating}, SetOptions(merge: true));
      }

      res = 'success';
    } catch (error) {
      return error.toString();
    }
    return res;
  }
}
