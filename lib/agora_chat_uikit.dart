
import 'agora_chat_uikit_platform_interface.dart';

class AgoraChatUikit {
  Future<String?> getPlatformVersion() {
    return AgoraChatUikitPlatform.instance.getPlatformVersion();
  }
}
