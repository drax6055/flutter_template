import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var getcontroller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: getcontroller.emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: getcontroller.passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getcontroller.login,
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: getcontroller.navigateToRegister,
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
