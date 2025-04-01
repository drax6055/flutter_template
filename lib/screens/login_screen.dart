import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import '../controllers/login_controller.dart';
import '../widgets/localized_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var getcontroller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: const text('login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: getcontroller.emailController,
              decoration: InputDecoration(labelText: tr('email')),
            ),
            TextField(
              controller: getcontroller.passwordController,
              decoration: InputDecoration(labelText: tr('password')),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getcontroller.login,
              child: const text('login'),
            ),
            TextButton(
              onPressed: getcontroller.navigateToRegister,
              child: const text('register'),
            ),
          ],
        ),
      ),
    );
  }
}
