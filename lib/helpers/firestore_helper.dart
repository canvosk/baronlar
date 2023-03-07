import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future setValueToCollection(
      {required String collectionName,
      required String docName,
      required Map<String, dynamic> data}) async {
    await firestore.collection('users').doc(docName).set(data);
  }

  Future getDataInCollection({
    required String collectionName,
    required String docName,
  }) async {
    var response = await firestore.collection(collectionName).doc(docName).get();
    return response;
  }
}
