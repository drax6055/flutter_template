import 'package:flutter/material.dart';
import 'package:flutter_template/routes/app_pages.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void register() {
    Get.offNamed(Routes.loginScreen);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
