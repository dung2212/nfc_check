import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nfc_check_method_channel.dart';

abstract class NfcCheckPlatform extends PlatformInterface {
  /// Constructs a NfcCheckPlatform.
  NfcCheckPlatform() : super(token: _token);

  static final Object _token = Object();

  static NfcCheckPlatform _instance = MethodChannelNfcCheck();

  /// The default instance of [NfcCheckPlatform] to use.
  ///
  /// Defaults to [MethodChannelNfcCheck].
  static NfcCheckPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NfcCheckPlatform] when
  /// they register themselves.
  static set instance(NfcCheckPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> isNfcSupported() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> isNfcEnabled() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future openSettingNFC() {
    throw UnimplementedError('openSettingsNFC() has not been implemented.');
  }
}
