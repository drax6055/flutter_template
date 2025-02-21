import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../commen_items/sharePrafrence.dart';
import '../../network/dio.dart';
import '../../network/model/login_model.dart';
import '../../network/network_const.dart';
import '../../route/app_route.dart';

class LoginController extends GetxController {
  final SharedPreferenceManager _prefs = SharedPreferenceManager();

  var emailController = TextEditingController();
  var passController = TextEditingController();
  var showPass = false.obs;

  void toggleShowPass() {
    showPass.value = !showPass.value;
  }

  Future onLoginPress() async {
    final dioClient = DioClient();

    Map<String, dynamic> loginData = {
      'username': emailController.text,  // 'emilys',
      'password': passController.text,   // 'emilyspass'
    };

    try {
      Login loginResponse = await dioClient.postData<Login>(
        '${Apis.baseUrl}${Endpoints.login}',
        loginData,
            (json) => Login.fromJson(json),
      );

      await _prefs.setUser(loginResponse);
      await _prefs.saveAccessToken(loginResponse.accessToken!);
      Get.offNamed(Routes.dashboardScreen);
     
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }
  
}
