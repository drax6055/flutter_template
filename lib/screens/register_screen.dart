import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var getcontroller =  Get.put(RegisterController()); 

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
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
              onPressed: getcontroller.register,
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
