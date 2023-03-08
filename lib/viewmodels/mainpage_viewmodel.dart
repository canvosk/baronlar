import 'package:baronlar/views/main_pages/chats_page/chatspage_imports.dart';
import 'package:baronlar/views/main_pages/contacts_page/contactspage_imports.dart';
import 'package:baronlar/views/main_pages/profile_page/profilepage_imports.dart';
import 'package:get/get.dart';

class MainPageViewModel extends GetxController {
  final selectedIndex = 1.obs;
  final selectedHeader = ('chats'.tr).obs;

  final pages = const [
    ContactsPage(),
    ChatsPage(),
    ProfilPage(),
  ];

  changePage(int index){
    switch (index) {
      case 0:
        selectedIndex.value = index;
        selectedHeader.value = 'contacts'.tr;
        break;
      case 1:
        selectedIndex.value = index;
        selectedHeader.value = 'chats'.tr;
        break;
      case 2:
        selectedIndex.value = index;
        selectedHeader.value = 'profile'.tr;
        break;
      default:
    }
  }


}
