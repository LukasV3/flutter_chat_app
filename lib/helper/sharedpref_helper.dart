import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userIdKey = 'USERKEY';
  static String userNameKey = 'USERNAMEKEY';
  static String displayNameKey = "USERDISPLAYNAMEKEY";
  static String userProfileKey = "USERPROFILEKEY";

  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userNameKey, getUserName);
  }
}
