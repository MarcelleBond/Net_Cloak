// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VpnInfo {
  String hostname;
  String ip;
  String ping;
  String countryLongName;
  String countryShortName;
  String base64OpenVPNConfigurationDate;
  int speed;
  int vpnSessionsNum;
  VpnInfo({
    required this.hostname,
    required this.ip,
    required this.ping,
    required this.countryLongName,
    required this.countryShortName,
    required this.base64OpenVPNConfigurationDate,
    required this.speed,
    required this.vpnSessionsNum,
  });

  VpnInfo copyWith({
    String? hostname,
    String? ip,
    String? ping,
    String? countryLongName,
    String? countryShortName,
    String? base64OpenVPNConfigurationDate,
    int? speed,
    int? vpnSessionsNum,
  }) {
    return VpnInfo(
      hostname: hostname ?? this.hostname,
      ip: ip ?? this.ip,
      ping: ping ?? this.ping,
      countryLongName: countryLongName ?? this.countryLongName,
      countryShortName: countryShortName ?? this.countryShortName,
      base64OpenVPNConfigurationDate:
          base64OpenVPNConfigurationDate ?? this.base64OpenVPNConfigurationDate,
      speed: speed ?? this.speed,
      vpnSessionsNum: vpnSessionsNum ?? this.vpnSessionsNum,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'HostName': hostname,
      'IP': ip,
      'Ping': ping,
      'CountryLong': countryLongName,
      'CountryShort': countryShortName,
      'OpenVPN_ConfigData_Base64': base64OpenVPNConfigurationDate,
      'Speed': speed,
      'NumVpnSessions': vpnSessionsNum,
    };
  }

  factory VpnInfo.fromMap(Map<String, dynamic> map) {
    return VpnInfo(
      hostname: map['HostName'] as String,
      ip: map['IP'] as String,
      ping: map['Ping'] as String,
      countryLongName: map['CountryLong'] as String,
      countryShortName: map['CountryShort'] as String,
      base64OpenVPNConfigurationDate:
          map['OpenVPN_ConfigData_Base64'] as String,
      speed: map['Speed'] as int,
      vpnSessionsNum: map['NumVpnSessions'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory VpnInfo.fromJson(String source) =>
      VpnInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VPN(hostname: $hostname, ip: $ip, ping: $ping, countryLongName: $countryLongName, countryShortName: $countryShortName, base64OpenVPNConfigurationDate: $base64OpenVPNConfigurationDate, speed: $speed, vpnSessionsNum: $vpnSessionsNum)';
  }

  @override
  bool operator ==(covariant VpnInfo other) {
    if (identical(this, other)) return true;

    return other.hostname == hostname &&
        other.ip == ip &&
        other.ping == ping &&
        other.countryLongName == countryLongName &&
        other.countryShortName == countryShortName &&
        other.base64OpenVPNConfigurationDate ==
            base64OpenVPNConfigurationDate &&
        other.speed == speed &&
        other.vpnSessionsNum == vpnSessionsNum;
  }

  @override
  int get hashCode {
    return hostname.hashCode ^
        ip.hashCode ^
        ping.hashCode ^
        countryLongName.hashCode ^
        countryShortName.hashCode ^
        base64OpenVPNConfigurationDate.hashCode ^
        speed.hashCode ^
        vpnSessionsNum.hashCode;
  }
}
