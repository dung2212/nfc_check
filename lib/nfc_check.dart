
import 'nfc_check_platform_interface.dart';

class NfcCheck {
  Future<String?> getPlatformVersion() {
    return NfcCheckPlatform.instance.getPlatformVersion();
  }

  static Future<bool> get isNfcSupported async {
    final response = await NfcCheckPlatform.instance.isNfcSupported();
    return response;
  }
  static Future<bool> get isNfcEnabled async {
    final response = await NfcCheckPlatform.instance.isNfcEnabled();
    return response;
  }

  //Only Android
  static Future openSettingNFC() {
    return NfcCheckPlatform.instance.openSettingNFC();
  }
}
