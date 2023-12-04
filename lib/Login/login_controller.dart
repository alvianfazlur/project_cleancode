import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main_screen/main_screen.dart';
import 'package:http/http.dart' as http;

class LoginScreenController extends GetxController {
  TextEditingController emailDataController = TextEditingController();
  TextEditingController passwordDataController = TextEditingController();

  Future<void> login() async {
    var url = Uri.parse("https://staging-api-productivity2023.agileteknik.com/api/v1/login");
    var response = await http.post(url, body: {
      'email': emailDataController.text,
      'password': passwordDataController.text,
    });
    if (response.statusCode == 200) {
      Get.offAllNamed(MainScreen.routeName);
    } else {
      Get.snackbar(
        "MAAF",
        "Email / Password yang kamu masukkan salah",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: Duration(seconds: 2),
      );
    }
  }
}
