import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_cleancode/detail_screen/detail_screen.dart';
import 'package:project_cleancode/planet_data/planet_data.dart';
import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({
    super.key,
    required this.planet,
    required this.index,
  });
  final PlanetData planet;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(DetailScreen.routeName,
            arguments: planet);
      },
      child: Card(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Image.asset(
                    planet.image,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust spacing as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                            planet.name,
                            style: const TextStyle(color: Colors.white, fontSize: 24.0),
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
