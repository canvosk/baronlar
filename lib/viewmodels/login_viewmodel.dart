import 'package:get/get.dart';

class LoginViewModel extends GetxController{

  final email = "".obs;
  final password = "".obs;


  setValues({required String value, required int index}){

    // index = 0 => for email
    // index = 1 => for password

    switch (index) {
      case 0:
        email.value = value;
        break;
      case 1:
        password.value = value;
        break;
     
      default:
    }

  }

}