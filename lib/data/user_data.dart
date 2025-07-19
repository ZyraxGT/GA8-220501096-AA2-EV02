import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UserData {
  static const String _userKey = 'registered_users';

  static Future<Map<String, String>> getUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_userKey);
    if (jsonString == null) return {};
    return Map<String, String>.from(json.decode(jsonString));
  }

  static Future<void> saveUser(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final users = await getUsers();
    users[username] = password;
    await prefs.setString(_userKey, json.encode(users));
  }

  static Future<bool> validateUser(String username, String password) async {
    final users = await getUsers();
    return users[username] == password;
  }
}
