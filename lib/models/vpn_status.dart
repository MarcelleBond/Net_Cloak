// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VpnStatus {
  String byteIn;
  String byteOut;
  String durationTime;
  String lastPacketReceive;
  VpnStatus({
    required this.byteIn,
    required this.byteOut,
    required this.durationTime,
    required this.lastPacketReceive,
  });

  VpnStatus copyWith({
    String? byteIn,
    String? byteOut,
    String? durationTime,
    String? lastPacketRecive,
  }) {
    return VpnStatus(
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

  factory VpnStatus.fromMap(Map<String, dynamic> map) {
    return VpnStatus(
      byteIn: map['byte_in'] as String,
      byteOut: map['byte_out'] as String,
      durationTime: map['duration'] as String,
      lastPacketReceive: map['last_packet_receive'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VpnStatus.fromJson(String source) => VpnStatus.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VpnStatus(byteIn: $byteIn, byteOut: $byteOut, durationTime: $durationTime, lastPacketRecive: $lastPacketReceive)';
  }

  @override
  bool operator ==(covariant VpnStatus other) {
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
