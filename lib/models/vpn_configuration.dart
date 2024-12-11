// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VpnConfiguration {
  String username;
  String password;
  String countryName;
  String config;
  VpnConfiguration({
    required this.username,
    required this.password,
    required this.countryName,
    required this.config,
  });

  VpnConfiguration copyWith({
    String? username,
    String? password,
    String? countryName,
    String? config,
  }) {
    return VpnConfiguration(
      username: username ?? this.username,
      password: password ?? this.password,
      countryName: countryName ?? this.countryName,
      config: config ?? this.config,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'countryName': countryName,
      'config': config,
    };
  }

  factory VpnConfiguration.fromMap(Map<String, dynamic> map) {
    return VpnConfiguration(
      username: map['username'] as String,
      password: map['password'] as String,
      countryName: map['countryName'] as String,
      config: map['config'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VpnConfiguration.fromJson(String source) => VpnConfiguration.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VpnConfiguration(username: $username, password: $password, countryName: $countryName, config: $config)';
  }

  @override
  bool operator ==(covariant VpnConfiguration other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.password == password &&
      other.countryName == countryName &&
      other.config == config;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      password.hashCode ^
      countryName.hashCode ^
      config.hashCode;
  }
}
