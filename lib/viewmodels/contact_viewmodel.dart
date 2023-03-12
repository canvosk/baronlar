import 'package:baronlar/models/friend_model.dart';
import 'package:baronlar/services/contact_service.dart';
import 'package:get/get.dart';

class ContactViewModel extends GetxController{
  final friends = <FriendModel>[].obs;
  final isLoading = false.obs;

  ContactService contactService = ContactService();

  Future getFriends() async{
    isLoading.value = true;
    var response = await contactService.getFriends().then((value){
      if(value is List<FriendModel>){
        friends.value = value;
        isLoading.value = false;
        return true;
      }
      isLoading.value = false;
      return false;
    });
    return response;
  }
}