import 'package:get/get.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/select_language_screen.dart';

class AppPages {
  static const initial = Routes.splashScreen;
  static final routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.registerScreen,
        page: () => RegisterScreen(),
        transition: Transition.rightToLeft),
    GetPage(
      name: Routes.selectLanguageScreen,
      page: () => const SelectLanguageScreen(),
    ),
  ];
}

abstract class Routes {
  static const loginScreen = '/LoginScreen';
  static const splashScreen = '/SplashScreen';
  static const homeScreen = '/HomeScreen';
  static const registerScreen = '/RegisterScreen';
  static const selectLanguageScreen = '/select-language';
}
