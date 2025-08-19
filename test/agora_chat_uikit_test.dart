import 'package:flutter_test/flutter_test.dart';
import 'package:agora_chat_uikit/agora_chat_uikit.dart';
import 'package:agora_chat_uikit/agora_chat_uikit_platform_interface.dart';
import 'package:agora_chat_uikit/agora_chat_uikit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAgoraChatUikitPlatform
    with MockPlatformInterfaceMixin
    implements AgoraChatUikitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AgoraChatUikitPlatform initialPlatform = AgoraChatUikitPlatform.instance;

  test('$MethodChannelAgoraChatUikit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAgoraChatUikit>());
  });

  test('getPlatformVersion', () async {
    AgoraChatUikit agoraChatUikitPlugin = AgoraChatUikit();
    MockAgoraChatUikitPlatform fakePlatform = MockAgoraChatUikitPlatform();
    AgoraChatUikitPlatform.instance = fakePlatform;

    expect(await agoraChatUikitPlugin.getPlatformVersion(), '42');
  });
}
