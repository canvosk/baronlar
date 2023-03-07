import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewmodels/membership_viewmodel.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    MembershipViewModel membershipViewModel = Get.find();
    membershipViewModel.getCurrentUser();
    return Container();
  }
}