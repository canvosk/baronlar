import 'package:baronlar/helpers/storage_helper.dart';
import 'package:baronlar/models/friend_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future getFriends() async {
    try {
      String uid = StorageHelper().getString(key: "uid");

      QuerySnapshot<Map<String, dynamic>> response = await firestore
          .collection("users")
          .doc(uid)
          .collection("friends")
          .get();
      
      List<FriendModel> friends = [];

      for (var friend in response.docs) {
        friends.add(FriendModel.fromMap(friend.data()));
      }

      return friends;
      // debugPrint(friends.docs[0].data());
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
