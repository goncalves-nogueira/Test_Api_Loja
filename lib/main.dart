import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/binding/home_binding.dart';
import 'ui/home/home_page.dart';
import 'ui/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    initialBinding: HomeBinding(),
    defaultTransition: Transition.fade,
    getPages: AppPages.routes,
    home: HomePage(),
  ));
}
