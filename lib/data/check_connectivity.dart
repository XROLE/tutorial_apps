import 'package:connectivity_plus/connectivity_plus.dart';

class CustomCheckConnectivity {
  CustomCheckConnectivity();

  static Future<bool> hashInternet() async {
    bool isConnected = true;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      isConnected = false;
    }
    return isConnected;
  }
}
