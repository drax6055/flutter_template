import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/route/app_page.dart';
import 'package:flutter_template/route/app_route.dart';
import 'package:flutter_template/utils/colors.dart';
import 'package:get/get.dart';

FlutterSecureStorage? storage;

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: primaryColor,
    statusBarColor: primaryColor,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,   
    DeviceOrientation.portraitDown, 
  ]).then((_) {
    runApp(MyApp());
  });

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      child: GetMaterialApp(
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: primaryColor,
            selectionColor: secondaryColor,
            selectionHandleColor: primaryColor,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'iFloriana_Super_Admin',
        initialRoute: Routes.splashScreen,
        getPages: AppPages.routes,
      ),
    );
  }
}
  