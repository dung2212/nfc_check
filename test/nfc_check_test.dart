import 'package:flutter_test/flutter_test.dart';
import 'package:nfc_check/nfc_check.dart';
import 'package:nfc_check/nfc_check_platform_interface.dart';
import 'package:nfc_check/nfc_check_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNfcCheckPlatform
    with MockPlatformInterfaceMixin
    implements NfcCheckPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NfcCheckPlatform initialPlatform = NfcCheckPlatform.instance;

  test('$MethodChannelNfcCheck is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNfcCheck>());
  });

  test('getPlatformVersion', () async {
    NfcCheck nfcCheckPlugin = NfcCheck();
    MockNfcCheckPlatform fakePlatform = MockNfcCheckPlatform();
    NfcCheckPlatform.instance = fakePlatform;

    expect(await nfcCheckPlugin.getPlatformVersion(), '42');
  });
}
