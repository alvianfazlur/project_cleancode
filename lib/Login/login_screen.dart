import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_cleancode/Theme/text_styling.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginScreenController>{
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Selamat Datang",
          style: titleTextStyle,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 173),
        child: Text("2023",style: TextStyle(fontSize: 20,color: Colors.grey),),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/orang.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextFormField(
                    cursorColor: Colors.deepPurpleAccent,
                    style: textFieldText,
                    textInputAction: TextInputAction.next,
                    controller: controller.emailDataController,
                    decoration:InputDecoration(
                      labelText: "Email",
                      hintText: "name@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    cursorColor: Colors.deepPurpleAccent,
                    style: textFieldText,
                    textInputAction: TextInputAction.next,
                    controller: controller.passwordDataController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  GetBuilder<LoginScreenController>(
                      builder: (controller) => ElevatedButton(
                          onPressed: (){
                            controller.login();
                          },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50), backgroundColor: Colors.deepPurpleAccent, // Mengubah warna tombol
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}