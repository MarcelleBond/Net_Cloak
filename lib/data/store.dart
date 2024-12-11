import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Store {
  SharedPreferences? _prefs;

  static final Store _instance = Store._internal();

  factory Store() => _instance;

  Store._internal();

  Future<void> _init() async =>
      _prefs ??= await SharedPreferences.getInstance();

  Future<void> _insert(Map<String, dynamic> data) async {
    data.forEach((key, value) {
      _prefs?.setString(key, value.toString());
    });
  }

  Future<void> _set(String key, dynamic value) async {
    Map<String, dynamic> data = {
      "value": value,
      "type": "${value.runtimeType}",
    };

    await _prefs?.setString(key, json.encode(data));
  }

  dynamic _get(String key) {
    Map<String, dynamic> data = json
        .decode(_prefs?.getString(key) ?? "{\"type\":\"Null\",\"value\":null}");

    switch (data["type"]) {
      case "String":
        return data["value"];
      case "int":
        return int.tryParse(data["value"]);
      case "double":
        return double.tryParse(data["value"]);
      case "bool":
        return data["value"] == "true" ? true : false;
      default:
        return null;
    }
  }

  Future<void> _remove(String key) async {
    await _prefs?.remove(key);
  }

  static Future<void> init() async => _instance._init();
  static Future<void> insert(Map<String, dynamic> data) async =>
      _instance._insert(data);
  static Future<void> set(String key, dynamic value) async =>
      Store._instance._set(key, value);
  static dynamic get(String key) => Store._instance._get(key);
  static Future<void> remove(String key) async => Store._instance._remove(key);
}
