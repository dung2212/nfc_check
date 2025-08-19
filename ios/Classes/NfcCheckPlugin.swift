import Flutter
import UIKit
import CoreNFC

public class NfcCheckPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "nfc_check", binaryMessenger: registrar.messenger())
    let instance = NfcCheckPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
     case "isNfcSupported":
                    if #available(iOS 13.0, *) {
                        result(NFCNDEFReaderSession.readingAvailable)
                    } else {
                        result(false)
                    }
                case "isNfcEnabled":
                    if #available(iOS 13.0, *) {
                        result(NFCNDEFReaderSession.readingAvailable)
                    } else {
                        result(false)
                    }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
