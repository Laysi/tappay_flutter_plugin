import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tappayflutterplugin_method_channel.dart';

abstract class TappayflutterpluginPlatform extends PlatformInterface {
  /// Constructs a TappayflutterpluginPlatform.
  TappayflutterpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TappayflutterpluginPlatform _instance = MethodChannelTappayflutterplugin();

  /// The default instance of [TappayflutterpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTappayflutterplugin].
  static TappayflutterpluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TappayflutterpluginPlatform] when
  /// they register themselves.
  static set instance(TappayflutterpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
