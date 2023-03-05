import 'package:baronlar/models/user_model.dart';
import 'package:baronlar/viewmodels/login_viewmodel.dart';
import 'package:baronlar/viewmodels/register_viewmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MembershipServices {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  login() async {
    LoginViewModel loginViewModel = Get.find();
    var user = await auth.signInWithEmailAndPassword(
      email: loginViewModel.email.value,
      password: loginViewModel.password.value,
    );

    if (user.user != null) {
      return user.user;
    }

    return false;
  }

  logout() async {
    return await auth.signOut();
  }

  Future register() async {
    try {
      RegisterViewModel registerViewModel = Get.find();
      var user = await auth.createUserWithEmailAndPassword(
          email: registerViewModel.email.value,
          password: registerViewModel.password.value);

      if (user.user != null) {
        await firestore.collection('users').doc(user.user!.uid).set({
          'name': registerViewModel.name.value,
          'surname': registerViewModel.surname.value,
          'username': registerViewModel.username.value,
          'email': registerViewModel.email.value,
          'password': registerViewModel.password.value,
        });

        UserModel userModel = UserModel(
          id: user.user!.uid,
          name: registerViewModel.name.value,
          surname: registerViewModel.surname.value,
          username: registerViewModel.username.value,
          email: registerViewModel.email.value,
          password: registerViewModel.password.value,
        );

        return userModel;
      }

      return false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
