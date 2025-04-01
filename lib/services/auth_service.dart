import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static late SharedPreferences _prefs;
  static bool get isLoggedIn => _prefs.getBool('isLoggedIn') ?? false;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void login() {
    _prefs.setBool('isLoggedIn', true);
  }

  static void logout() {
    _prefs.setBool('isLoggedIn', false);
  }
}
