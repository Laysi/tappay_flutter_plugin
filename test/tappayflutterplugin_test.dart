import 'package:flutter_test/flutter_test.dart';
import 'package:tappayflutterplugin/tappayflutterplugin.dart';
import 'package:flutter/services.dart';
// import 'package:tappayflutterplugin/tappayflutterplugin_platform_interface.dart';
// import 'package:tappayflutterplugin/tappayflutterplugin_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockTappayflutterpluginPlatform
//     with MockPlatformInterfaceMixin
//     implements TappayflutterpluginPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final TappayflutterpluginPlatform initialPlatform = TappayflutterpluginPlatform.instance;
//
//   test('$MethodChannelTappayflutterplugin is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelTappayflutterplugin>());
//   });
//
//   test('getPlatformVersion', () async {
//     Tappayflutterplugin tappayflutterpluginPlugin = Tappayflutterplugin();
//     MockTappayflutterpluginPlatform fakePlatform = MockTappayflutterpluginPlatform();
//     TappayflutterpluginPlatform.instance = fakePlatform;
//
//     expect(await tappayflutterpluginPlugin.getPlatformVersion(), '42');
//   });
// }

void main() {
  const MethodChannel channel = MethodChannel('tappayflutterplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Tappayflutterplugin.platformVersion, '42');
  });
}
