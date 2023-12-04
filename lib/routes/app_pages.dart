
import 'package:flutter/animation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:project_cleancode/main_screen/main_screen.dart';
import 'package:project_cleancode/main_screen/main_screen_bindings.dart';
import '../Login/login_bindings.dart';
import '../Login/login_screen.dart';
import '../detail_screen/detail_bindings.dart';
import '../detail_screen/detail_screen.dart';

var appPages = [
  GetPage(
    name: LoginScreen.routeName,
    page: () => const LoginScreen(),
    binding: LoginBinding(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: MainScreen.routeName,
    page: () => const MainScreen(),
    binding: MainScreenBinding(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: DetailScreen.routeName,
    page: () => const DetailScreen(),
    binding: DetailScreenBinding(),
    transition: Transition.cupertino,
    curve: Curves.easeInOut,
    transitionDuration: const Duration(milliseconds: 250),
  ),
];