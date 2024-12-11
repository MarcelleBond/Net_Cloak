package co.za.MarcelleBond.net_cloak

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
	private val CHANNEL = "vpn_service"
	private MethodChannel vpnControlmethod;
	private EventChanel vpnControlEvent;
	private EventChanel vpnStatusEvent;
	private EventChange.EventSink vpnStageSink;
	private EventChange.EventSink vpnStatusSink;
	
	private static final String EVENT_CHANNEL_VPN_STAGE = "vpnStage";
	private static final String EVENT_CHANNEL_VPN_STATUS = "vpnStatus";
	private static final String METHOD_CHANNEL_VPN_CONTROL = "vpnControll";
	private static final String TAG = "VPN"
	private static final int VPN_REQUEST_ID = 1;
	
	private VpnService vpnService;
	private String config = "",
				   username = "",
				   password = "",
				   name = "",
				   dns1 = VpnService.DEFAULT_DNS1, 
				   dns2 = VpnService.DEFAULT_DNS2;
	private Array<String> bypassPackage;
	private boolean = true;
	private JSONObject localJson;
	
	@override void finish() {
		vpnControlmethod.setMethodCallHandler(null);
		vpnControlEvent.setStreamHandler(null);
		vpnStatusEvent.setStreamHandler(null);
		super.finish()
	}
}
