import 'package:shared_preferences/shared_preferences.dart';

class MainUserStorage {
static SharedPreferences? prefs;

  static const String keyTheme = 'theme';
  static const String keyAccessToken = 'access_token';

  initMainUserStorage() async {
    prefs = await SharedPreferences.getInstance();
  }


//
//////////////////////functions to write data/////////////////////////////
   void saveTheme(bool value) async{
   await MainUserStorage.prefs?.setBool(keyTheme, value);
  }

  static void saveAccessToken(String value) {
    MainUserStorage.prefs?.setString(keyAccessToken, value);
  }

  //
  //////////////////////Function to read data/////////////////////////////
  static bool? get readTheme {
    return prefs?.getBool(keyTheme) ?? true;
  }

  static String? get readAccessToken {
    return prefs?.getString(keyAccessToken);
  }


  //////////////////////Function to remove data/////////////////////////////


  static void removeTheme() {
    MainUserStorage.prefs?.remove(keyTheme);
  }

  static void removeStorage() {
    MainUserStorage.prefs?.remove(keyTheme);
    MainUserStorage.prefs?.remove(keyAccessToken);
  }
}
