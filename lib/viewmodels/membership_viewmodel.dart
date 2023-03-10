import 'package:baronlar/helpers/storage_helper.dart';
import 'package:baronlar/services/membership_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MembershipViewModel extends GetxController {
  final loginLoading = false.obs;
  final registerLoading = false.obs;

  MembershipServices membershipServices = MembershipServices();
  StorageHelper storageHelper = StorageHelper();

  Future login() async {
    loginLoading.value = true;
    var result = await membershipServices.login();

    if (result is User) {
      storageHelper.setString(key: "uid", value: result.uid);
      loginLoading.value = false;
      return true;
    }

    loginLoading.value = false;
    return false;
  }

  Future register() async {
    registerLoading.value = true;
    var result = await membershipServices.register();

    if (result is User) {
      storageHelper.setString(key: "uid", value: result.uid);
      registerLoading.value = false;
      return true;
    }

    registerLoading.value = false;
    return false;
  }
}
