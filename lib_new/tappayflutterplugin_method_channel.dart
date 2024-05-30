import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tappayflutterplugin_platform_interface.dart';

/// An implementation of [TappayflutterpluginPlatform] that uses method channels.
class MethodChannelTappayflutterplugin extends TappayflutterpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tappayflutterplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
