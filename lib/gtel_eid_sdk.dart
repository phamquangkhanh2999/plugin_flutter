
import 'gtel_eid_sdk_platform_interface.dart';

class GtelEidSdk {
  Future<String?> getPlatformVersion() {
    return GtelEidSdkPlatform.instance.getPlatformVersion();
  }
}
