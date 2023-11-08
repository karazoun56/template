import 'package:shared_preferences/shared_preferences.dart';

import '../config/constants.dart';

class SharedPrefs {
  SharedPrefs._();
  static SharedPrefs instance = SharedPrefs._();
  static SharedPreferences? _prefs;

  final String _userDataKey = 'userData';
  final String _userProfileKey = 'userProfile';
  final String _language = 'languageKey';
  final String _loginState = 'loginState';
  final String _userTokenKey = 'token';

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //TODO shared preferences if needs

  void setUserToken({required String token}) {
    _prefs?.setString(_userTokenKey, token);
  }

  String getUserToken() {
    return _prefs?.getString(_userTokenKey) ?? '';
  }

  void setLanguage({required String langCode}) {
    _prefs!.setString(_language, langCode);
  }

  String getLanguage() {
    return _prefs?.getString(_language) ?? arLangCode;
  }

  // Future<void> setUserData({required User user}) async {
  //   await _prefs!.setString(_userDataKey, jsonEncode(user.toJson()));
  // }

  // User? getUserData() {
  //   final String? userData = _prefs!.getString(_userDataKey);
  //   if (userData != null) {
  //     return User.fromJson(jsonDecode(userData));
  //   }
  //   return null;
  // }

  // Future<void> setUserProfile({required Profile userProfile}) async {
  //   await _prefs!.setString(_userProfileKey, jsonEncode(userProfile.toJson()));
  // }

  // Profile? getUserProfile() {
  //   final String? profileData = _prefs!.getString(_userProfileKey);
  //   if (profileData != null) {
  //     return Profile.fromJson(jsonDecode(profileData));
  //   }
  //   return null;
  // }

  Future<void> setLoginState({required bool loginState}) async {
    await _prefs!.setBool(_loginState, loginState);
  }

  bool getLoginState() => _prefs!.getBool(_loginState) ?? false;

  Future<void> clearUserData() async {
    await _prefs?.remove(_userTokenKey);
    await _prefs?.remove(_userDataKey);
  }

  Future<void> clearPrefs() async {
    await _prefs?.remove(_userTokenKey);
    await _prefs?.remove(_userDataKey);
    await _prefs?.remove(_loginState);
    await _prefs?.remove(_userProfileKey);
  }
}
