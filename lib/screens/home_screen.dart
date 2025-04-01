import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('home')),
      ),
      body: Center(
        child: Text(tr('welcome')),
      ),
    );
  }
}
