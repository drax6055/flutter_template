import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/splash/splash_controller.dart';
import 'package:flutter_template/utils/colors.dart';
import 'package:get/get.dart';

import '../../utils/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController getController = Get.put(SplashController());
    getController.navigateToNextScreen();

    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        child: Center(
          child: Image.asset(AppImages.applogo,
              width: 150.w, height: 130.h, fit: BoxFit.fill),
        ),
      ),
    ));
  }
}
