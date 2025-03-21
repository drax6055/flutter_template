import 'dart:async';
import 'package:get/get.dart';
import '../../commen_items/sharePrafrence.dart';
import '../../route/app_route.dart';

class SplashController extends GetxController {

  final SharedPreferenceManager _prefs = SharedPreferenceManager();

  @override
  void onInit() {
    super.onInit();
    navigateToNextScreen();
  }

  navigateToNextScreen() async {
    try {
      var duration = const Duration(seconds: 2);

      Timer(duration, () async {
        String? accessToken = await _prefs.getAccessToken();
        if (accessToken == null) {
          Get.offNamedUntil(Routes.loginScreen, (route) => false);
        } else {
           Get.offNamedUntil(Routes.dashboardScreen, (route) => false);
        }
      });
    } catch (e) {
        Get.snackbar('Error', '$e');
    }
  }
}
