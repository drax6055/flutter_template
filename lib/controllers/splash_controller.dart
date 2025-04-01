import 'package:flutter_template/routes/app_pages.dart';
import 'package:get/get.dart';
import '../services/auth_service.dart';
import 'package:flutter_template/services/storage_service.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      if (StorageService.isFirstLaunch) {
        Get.offNamed(Routes.selectLanguageScreen);
      } else if (AuthService.isLoggedIn) {
        Get.offNamed(Routes.homeScreen);
      } else {
        Get.offNamed(Routes.loginScreen);
      }
    });
  }
}
