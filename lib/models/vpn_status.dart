// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VpnStatusV2 {
  String byteIn;
  String byteOut;
  String durationTime;
  String lastPacketReceive;
  VpnStatusV2({
    required this.byteIn,
    required this.byteOut,
    required this.durationTime,
    required this.lastPacketReceive,
  });

  VpnStatusV2 copyWith({
    String? byteIn,
    String? byteOut,
    String? durationTime,
    String? lastPacketRecive,
  }) {
    return VpnStatusV2(
      byteIn: byteIn ?? this.byteIn,
      byteOut: byteOut ?? this.byteOut,
      durationTime: durationTime ?? this.durationTime,
      lastPacketReceive: lastPacketRecive ?? this.lastPacketReceive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byte_in': byteIn,
      'byte_out': byteOut,
      'duration': durationTime,
      'last_packet_receive': lastPacketReceive,
    };
  }

  factory VpnStatusV2.fromMap(Map<String, dynamic> map) {
    return VpnStatusV2(
      byteIn: map['byte_in'] as String,
      byteOut: map['byte_out'] as String,
      durationTime: map['duration'] as String,
      lastPacketReceive: map['last_packet_receive'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VpnStatusV2.fromJson(String source) => VpnStatusV2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VpnStatusV2(byteIn: $byteIn, byteOut: $byteOut, durationTime: $durationTime, lastPacketRecive: $lastPacketReceive)';
  }

  @override
  bool operator ==(covariant VpnStatusV2 other) {
    if (identical(this, other)) return true;
  
    return 
      other.byteIn == byteIn &&
      other.byteOut == byteOut &&
      other.durationTime == durationTime &&
      other.lastPacketReceive == lastPacketReceive;
  }

  @override
  int get hashCode {
    return byteIn.hashCode ^
      byteOut.hashCode ^
      durationTime.hashCode ^
      lastPacketReceive.hashCode;
  }
}
