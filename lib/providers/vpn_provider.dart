import 'package:flutter/material.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

import '../models/models.dart';

class VpnProvider extends ChangeNotifier {
  late OpenVPN _openvpn;
  List<VpnInfo> _vpnList = [];
  VpnInfo? _selectedVpn;
  VpnStatus? status;
  VPNStage? stage;

  VpnProvider() {
    _openvpn = OpenVPN(
      onVpnStatusChanged: _onVpnStatusChanged,
      onVpnStageChanged: _onVpnStageChanged,
    );
    _openvpn.initialize(
      ///Example 'group.com.laskarmedia.vpn'
      groupIdentifier: "group.co.za.MarcelleBond.net_cloak",

      ///Example 'id.laskarmedia.openvpnFlutterExample.VPNExtension'
      providerBundleIdentifier: "id.co.za.MarcelleBond.net_cloak",

      ///Example 'Laskarmedia VPN'
      localizedDescription: "Net Cloak VPN",
    );
  }

  void _onVpnStatusChanged(VpnStatus? vpnStatus) {
    status = vpnStatus;
    notifyListeners();
  }

  void _onVpnStageChanged(VPNStage? stage, String text) {
    stage = stage;
    notifyListeners();
  }
  
}
