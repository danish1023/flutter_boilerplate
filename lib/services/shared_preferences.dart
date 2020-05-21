import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  Future<SharedPreferences> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }
}
