import 'package:baronlar/models/user_model.dart';
import 'package:baronlar/services/membership_services.dart';
import 'package:get/get.dart';

class MembershipViewModel extends GetxController {
  final user = UserModel().obs;
  final loginLoading = false.obs;
  final registerLoading = false.obs;

  MembershipServices membershipServices = MembershipServices();

  login() async {
    loginLoading.value = true;
    var result = await membershipServices.login();

    if (result is UserModel) {
      user.value = result;
      loginLoading.value = false;
      return true;
    }

    loginLoading.value = false;
    return false;
  }

  register() async {
    registerLoading.value = true;
    var result = await membershipServices.register();

    if (result is UserModel) {
      user.value = result;
      registerLoading.value = false;
      return true;
    }

    registerLoading.value = false;
    return false;
  }
}
