
import 'tappayflutterplugin_platform_interface.dart';

class Tappayflutterplugin {
  Future<String?> getPlatformVersion() {
    return TappayflutterpluginPlatform.instance.getPlatformVersion();
  }
}
