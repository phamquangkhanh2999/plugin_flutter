import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gtel_eid_sdk_platform_interface.dart';

/// An implementation of [GtelEidSdkPlatform] that uses method channels.
class MethodChannelGtelEidSdk extends GtelEidSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gtel_eid_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
