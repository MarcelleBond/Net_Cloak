import 'package:flutter/material.dart';

import '../models/models.dart';

class VpnProvider extends ChangeNotifier{
  List<VpnInfo> _vpnList = [];
  VpnInfo? _selectedVpn;
  
}