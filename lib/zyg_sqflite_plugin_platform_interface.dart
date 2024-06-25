import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zyg_sqflite_plugin_method_channel.dart';

abstract class ZygSqflitePluginPlatform extends PlatformInterface {
  /// Constructs a ZygSqflitePluginPlatform.
  ZygSqflitePluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZygSqflitePluginPlatform _instance = MethodChannelZygSqflitePlugin();

  /// The default instance of [ZygSqflitePluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelZygSqflitePlugin].
  static ZygSqflitePluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZygSqflitePluginPlatform] when
  /// they register themselves.
  static set instance(ZygSqflitePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
