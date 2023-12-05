import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:project_cleancode/Login/login_screen.dart';
import 'package:project_cleancode/planet_data/planet_data.dart';

class MainScreenController extends GetxController{
  final TextEditingController search = TextEditingController();
  final FocusNode searchPlanetFocus = FocusNode();
  List<PlanetData> displayPlanet = [];

  @override
  void onInit() {
    displayPlanet = planetlist;
    super.onInit();
  }
  void updateList(String value) {
    displayPlanet = planetlist.where(
            (element) => element.name.toLowerCase().contains(value.toLowerCase())
    ).toList();
    update();
  }
  void clearSearch() {
    search.clear();
    update();
  }
}