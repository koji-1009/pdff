import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pdff_method_channel.dart';

abstract class PdffPlatform extends PlatformInterface {
  /// Constructs a PdffPlatform.
  PdffPlatform() : super(token: _token);

  static final Object _token = Object();

  static PdffPlatform _instance = MethodChannelPdff();

  /// The default instance of [PdffPlatform] to use.
  ///
  /// Defaults to [MethodChannelPdff].
  static PdffPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PdffPlatform] when
  /// they register themselves.
  static set instance(PdffPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
