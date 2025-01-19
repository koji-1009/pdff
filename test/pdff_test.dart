import 'package:flutter_test/flutter_test.dart';
import 'package:pdff/pdff.dart';
import 'package:pdff/pdff_platform_interface.dart';
import 'package:pdff/pdff_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPdffPlatform
    with MockPlatformInterfaceMixin
    implements PdffPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PdffPlatform initialPlatform = PdffPlatform.instance;

  test('$MethodChannelPdff is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPdff>());
  });

  test('getPlatformVersion', () async {
    Pdff pdffPlugin = Pdff();
    MockPdffPlatform fakePlatform = MockPdffPlatform();
    PdffPlatform.instance = fakePlatform;

    expect(await pdffPlugin.getPlatformVersion(), '42');
  });
}
