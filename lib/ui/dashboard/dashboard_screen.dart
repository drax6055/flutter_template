import 'package:flutter/material.dart';
import 'package:flutter_template/ui/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController getController = Get.put(DashboardController());

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Dashboard Screen'),
        ),
      ),
    );
  }
}