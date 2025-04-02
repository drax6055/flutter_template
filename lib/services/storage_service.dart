import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const _firstLaunchKey = 'isFirstLaunch';
  static const _languageKey = 'selectedLanguage';
  static late SharedPreferences _prefs;
  static bool _isFirstLaunch = true;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    if (!_prefs.containsKey(_firstLaunchKey)) {
      await _prefs.setBool(_firstLaunchKey, true);
    }
    _isFirstLaunch = _prefs.getBool(_firstLaunchKey) ?? true;
  }

  static bool get isFirstLaunch => _isFirstLaunch;

  static set isFirstLaunch(bool value) {
    _isFirstLaunch = value;
    _prefs.setBool(
        _firstLaunchKey, value); // Persist the value to local storage.
  }

  static Future<void> setFirstLaunchComplete() async {
    await _prefs.setBool(_firstLaunchKey, false);
    _isFirstLaunch = false;
  }

  static String get selectedLanguage {
    return _prefs.getString(_languageKey) ?? 'en'; // Default to English
  }

  static Future<void> setSelectedLanguage(String languageCode) async {
    await _prefs.setString(_languageKey, languageCode);
  }
}
