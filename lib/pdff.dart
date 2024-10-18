
import 'pdff_platform_interface.dart';

class Pdff {
  Future<String?> getPlatformVersion() {
    return PdffPlatform.instance.getPlatformVersion();
  }
}
