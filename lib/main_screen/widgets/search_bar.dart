import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_cleancode/main_screen/main_screen_controller.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<MainScreenController>(
      builder: (controller) => Material(
        borderRadius: BorderRadius.circular(15),
        child: TextField(
          onChanged: (value) {
            controller.updateList(value);
          },
          focusNode: controller.searchPlanetFocus,
          autofocus: false,
          controller: controller.search,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Cari Planet",
            suffixIcon: controller.search.text.isNotEmpty
                ? IconButton(
              onPressed: () {
                controller.clearSearch();
                controller.updateList(controller.search.text);
              },
              icon: const Icon(Icons.highlight_remove_rounded),
            )
                : IconButton(
              onPressed: () {
                controller.updateList(controller.search.text);
              },
              icon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
