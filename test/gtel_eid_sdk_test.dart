import 'package:flutter_test/flutter_test.dart';
import 'package:gtel_eid_sdk/gtel_eid_sdk.dart';
import 'package:gtel_eid_sdk/gtel_eid_sdk_platform_interface.dart';
import 'package:gtel_eid_sdk/gtel_eid_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGtelEidSdkPlatform
    with MockPlatformInterfaceMixin
    implements GtelEidSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GtelEidSdkPlatform initialPlatform = GtelEidSdkPlatform.instance;

  test('$MethodChannelGtelEidSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGtelEidSdk>());
  });

  test('getPlatformVersion', () async {
    GtelEidSdk gtelEidSdkPlugin = GtelEidSdk();
    MockGtelEidSdkPlatform fakePlatform = MockGtelEidSdkPlatform();
    GtelEidSdkPlatform.instance = fakePlatform;

    expect(await gtelEidSdkPlugin.getPlatformVersion(), '42');
  });
}
