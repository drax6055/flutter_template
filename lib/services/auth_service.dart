import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static late SharedPreferences _prefs;
  static bool get isLoggedIn => _prefs.getBool('isLoggedIn') ?? false;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void login(String accessToken, String refreshToken) {
    _prefs.setBool('isLoggedIn', true);
    _prefs.setString('accessToken', accessToken);
    _prefs.setString('refreshToken', refreshToken);
  }

  static void logout() {
    _prefs.setBool('isLoggedIn', false);
    _prefs.remove('accessToken');
    _prefs.remove('refreshToken');
  }

  static String? get accessToken => _prefs.getString('accessToken');
  static String? get refreshToken => _prefs.getString('refreshToken');
}
