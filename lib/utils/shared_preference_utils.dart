// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils {
  static final SharedPreferenceUtils _instance = SharedPreferenceUtils._internal();

  factory SharedPreferenceUtils() {
    return _instance;
  }

  SharedPreferenceUtils._internal();

  static String get token => 'token';


  ///Authentication Section
  Future<String?> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(token);
  }

  Future<bool> saveToken({
    required String token,
  }) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(token, token);
  }

  Future<bool> deleteToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.remove(token);
  }

}
