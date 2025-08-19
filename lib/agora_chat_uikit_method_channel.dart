import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'agora_chat_uikit_platform_interface.dart';

/// An implementation of [AgoraChatUikitPlatform] that uses method channels.
class MethodChannelAgoraChatUikit extends AgoraChatUikitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('agora_chat_uikit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
