import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'gtel_eid_sdk_method_channel.dart';

abstract class GtelEidSdkPlatform extends PlatformInterface {
  /// Constructs a GtelEidSdkPlatform.
  GtelEidSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static GtelEidSdkPlatform _instance = MethodChannelGtelEidSdk();

  /// The default instance of [GtelEidSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelGtelEidSdk].
  static GtelEidSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GtelEidSdkPlatform] when
  /// they register themselves.
  static set instance(GtelEidSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
