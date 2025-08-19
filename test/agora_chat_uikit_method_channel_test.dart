import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agora_chat_uikit/agora_chat_uikit_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAgoraChatUikit platform = MethodChannelAgoraChatUikit();
  const MethodChannel channel = MethodChannel('agora_chat_uikit');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
