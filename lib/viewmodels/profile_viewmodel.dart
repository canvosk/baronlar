import 'package:get/get.dart';

import '../helpers/storage_helper.dart';
import '../models/user_model.dart';
import '../services/membership_services.dart';

class ProfileViewModel extends GetxController{
  final user = UserModel().obs;
  final gettingUser = false.obs;


  MembershipServices membershipServices = MembershipServices();
  StorageHelper storageHelper = StorageHelper();

  Future getCurrentUser() async {
    gettingUser.value = true;

    membershipServices.getCurrentUserInfo().then((value) {
      if (value is UserModel) {
        user.value = value;
        gettingUser.value = false;
        return true;
      }
      gettingUser.value = false;
      return false;
    });
  }
}