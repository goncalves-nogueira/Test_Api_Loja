import 'package:cloud_firestore/cloud_firestore.dart';

class ApiClient {
  Future getAll() async {
    FirebaseFirestore.instance
        .collection('products')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        print(doc);
      }
    });
  }
}
