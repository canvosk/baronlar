import 'package:get/get.dart';

class RegisterViewModel extends GetxController {
  final name = "".obs;
  final surname = "".obs;
  final username = "".obs;
  final email = "".obs;
  final password = "".obs;
  final repassword = "".obs;
  final base64 = "".obs;

  setValues({required String value, required int index}) {
    // index = 0 => for name
    // index = 1 => for surname
    // index = 2 => for username
    // index = 3 => for email
    // index = 4 => for password
    // index = 5 => for repassword
    // index = 6 => for base64

    switch (index) {
      case 0:
        name.value = value;
        break;
      case 1:
        surname.value = value;
        break;
      case 2:
        username.value = value;
        break;
      case 3:
        email.value = value;
        break;
      case 4:
        password.value = value;
        break;
      case 5:
        repassword.value = value;
        break;
      case 6:
        base64.value = value;
        break;
      default:
    }
  }
}
