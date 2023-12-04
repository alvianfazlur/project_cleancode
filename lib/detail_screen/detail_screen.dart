import 'package:get/get.dart';
import 'package:project_cleancode/detail_screen/detail_controller.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class DetailScreen extends GetView<DetailScreenController>{
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<DetailScreenController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(controller.planet.name),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    child: Hero(
                      tag: 'bg',
                      child: Container(
                        color: Colors.black,
                        height: size.height * 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              controller.planet.data,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Mass : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  controller.planet.mass,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Radius : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  controller.planet.radius,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Orbital Period : ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  controller.planet.orbitalPeriod,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget> [
                                Image.asset(
                                  controller.planet.image,
                                  width: size.width,
                                  height: size.width,
                                ),
                              ],
                            )
                          ],
                        )],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
