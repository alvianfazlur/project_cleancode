import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_cleancode/main_screen/planet_list.dart';
import 'package:project_cleancode/main_screen/widgets/logout_button.dart';
import 'package:project_cleancode/main_screen/widgets/search_bar.dart';
import 'main_screen_controller.dart';

class MainScreen extends GetView<MainScreenController>{
  const MainScreen({super.key});
  static const routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Ensiklopedia Planet"),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SearchBarWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
                child: const PlanetList()
            ),
          ],
        ),
      ),
      floatingActionButton: const LogoutButton(),
      );
  }
}