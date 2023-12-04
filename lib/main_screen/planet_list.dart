import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_cleancode/main_screen/planet_card.dart';
import 'main_screen_controller.dart';

class PlanetList extends GetView<MainScreenController>{
  const PlanetList({super.key});
  static const routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainScreenController>(
      builder: (controller) => GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: controller.displayPlanet.length,
        itemBuilder: (context, index) {
          var planet = controller.displayPlanet[index];
          return PlanetCard(
            planet : planet,
            index : index
          );
        },
      ),
    );
  }}
