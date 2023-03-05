import 'package:baronlar/views/base_page/base_imports.dart';
import 'package:baronlar/views/membership_pages/login_page/loginpage_imports.dart';
import 'package:baronlar/views/membership_pages/membership_imports.dart';
import 'package:baronlar/views/membership_pages/register_page/registerpage_imports.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: "/membership",
        page: () => const MembershipManagement(),
      ),
      GetPage(
        name: "/login",
        page: () => const BasePage(
          page: LoginPage(),
        ),
      ),
      GetPage(
        name: "/register",
        page: () => const BasePage(
          page: RegisterPage(),
        ),
      ),
    ];
