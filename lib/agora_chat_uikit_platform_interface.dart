import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'agora_chat_uikit_method_channel.dart';

abstract class AgoraChatUikitPlatform extends PlatformInterface {
  /// Constructs a AgoraChatUikitPlatform.
  AgoraChatUikitPlatform() : super(token: _token);

  static final Object _token = Object();

  static AgoraChatUikitPlatform _instance = MethodChannelAgoraChatUikit();

  /// The default instance of [AgoraChatUikitPlatform] to use.
  ///
  /// Defaults to [MethodChannelAgoraChatUikit].
  static AgoraChatUikitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AgoraChatUikitPlatform] when
  /// they register themselves.
  static set instance(AgoraChatUikitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
