import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_cleancode/Login/login_bindings.dart';
import 'package:project_cleancode/Login/login_screen.dart';
import 'package:project_cleancode/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    initialBinding: LoginBinding(),
    getPages: appPages,
  ));
}




