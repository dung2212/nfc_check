#include "include/nfc_check/nfc_check_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "nfc_check_plugin.h"

void NfcCheckPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  nfc_check::NfcCheckPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
