import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pdff_platform_interface.dart';

/// An implementation of [PdffPlatform] that uses method channels.
class MethodChannelPdff extends PdffPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pdff');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
