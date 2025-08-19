#ifndef FLUTTER_PLUGIN_NFC_CHECK_PLUGIN_H_
#define FLUTTER_PLUGIN_NFC_CHECK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace nfc_check {

class NfcCheckPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NfcCheckPlugin();

  virtual ~NfcCheckPlugin();

  // Disallow copy and assign.
  NfcCheckPlugin(const NfcCheckPlugin&) = delete;
  NfcCheckPlugin& operator=(const NfcCheckPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace nfc_check

#endif  // FLUTTER_PLUGIN_NFC_CHECK_PLUGIN_H_
