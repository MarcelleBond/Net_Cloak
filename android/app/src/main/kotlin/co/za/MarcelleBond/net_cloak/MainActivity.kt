package co.za.MarcelleBond.net_cloak

import io.flutter.embedding.android.FlutterActivity
import id.laskarmedia.openvpn_flutter.OpenVPNFlutterPlugin

class MainActivity: FlutterActivity() {
	override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        OpenVPNFlutterPlugin.connectWhileGranted(requestCode == 24 && resultCode == RESULT_OK)
        super.onActivityResult(requestCode, resultCode, data)
    }
}
