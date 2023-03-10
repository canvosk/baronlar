import 'package:baronlar/firebase_options.dart';
import 'package:baronlar/helpers/storage_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/messages.dart';
import 'constants/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late String route;

  @override
  void initState() {
    super.initState();
    String uid = StorageHelper().getString(key: "uid");
    if(uid == ""){
      route = "/membership";
      return;
    }
    route = "/mainpage";
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          ),
          debugShowCheckedModeBanner: false,
          title: "Chat App",
          initialRoute: route,
          getPages: appRoutes(),
          translations: Messages(),
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en', 'UK'),
        );
      },
    );
  }
}
