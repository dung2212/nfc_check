import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nfc_check_platform_interface.dart';

/// An implementation of [NfcCheckPlatform] that uses method channels.
class MethodChannelNfcCheck extends NfcCheckPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nfc_check');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> isNfcSupported() async {
    final version = await methodChannel.invokeMethod<bool>('isNfcSupported');
    return version ?? false;
  }

  @override
  Future<bool> isNfcEnabled() async {
    final version = await methodChannel.invokeMethod<bool>('isNfcEnabled');
    return version ?? false;
  }

  @override
  Future openSettingNFC() async {
    await methodChannel.invokeMethod<dynamic>('OPEN_SETTING_NFC', {});
  }
}
