import 'package:flutter/material.dart';
import '../widgets/localized_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const text('home'),
      ),
      body: Center(
        child: const text('welcome'),
      ),
    );
  }
}
