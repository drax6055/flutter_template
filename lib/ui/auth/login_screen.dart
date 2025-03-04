import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/utils/app_images.dart';
import 'package:flutter_template/utils/colors.dart';
import 'package:get/get.dart';
import '../../wiget/Custome_textfield.dart';
import '../../wiget/Custome_button.dart';
import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController getController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
               Login_screen(),
              ],
            ),
          ),
        ),
    
    );
  }

  Widget InputTxtfield_Email() {
    return CustomTextFormField(
      controller: getController.emailController,
      hintText: 'Enter your Email',
      labelText: 'Email',
      // prefixIcon: Icons.email,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget InputTxtfield_Pass() {
    return Obx(() => CustomTextFormField(
          controller: getController.passController,
          hintText: 'Enter your Password',
          labelText: 'Password',
          // prefixIcon: Icons.password,
          obscureText: !getController.showPass.value,
          suffixIcon: IconButton(
            onPressed: () {
              getController.toggleShowPass();
            },
            icon: Icon(
              getController.showPass.value
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ));
  }

  Widget Btn_Login() {
    return ElevatedButtonExample(
      text: "Login",
      onPressed: () {
        getController.onLoginPress();
      },
    );
  }
Widget login_screen_header() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        height: 170.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      Positioned(
        bottom: -50,
        child: Container(
           decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, 
                  color: secondaryColor, 
                  spreadRadius: 6
                  )
                ],
            ),
          child: CircleAvatar(
            radius: 70,
            foregroundImage: AssetImage(AppImages.applogo,),
          ),
        ),
      )
    ],
  );
}


   Widget login_screen_body() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          InputTxtfield_Email(),
          SizedBox(height: 16.h),
          InputTxtfield_Pass(),
          SizedBox(height: 16.h),
          Btn_Login(),
        ],
      ),
    );
   }
   Widget Login_screen(){
    return Column(
      children: [
        login_screen_header(),
        login_screen_body(),
      ],
    );
   }
}
