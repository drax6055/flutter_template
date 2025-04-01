import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const _firstLaunchKey = 'isFirstLaunch';

  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(_firstLaunchKey)) {
      await prefs.setBool(_firstLaunchKey, true);
    }
  }

  static bool get isFirstLaunch {
    final prefs = SharedPreferences.getInstance();
    return prefs.then((prefs) => prefs.getBool(_firstLaunchKey) ?? true);
  }

  static Future<void> setFirstLaunchComplete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_firstLaunchKey, false);
  }
}
