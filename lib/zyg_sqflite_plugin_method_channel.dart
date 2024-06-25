import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'zyg_sqflite_plugin_platform_interface.dart';

/// An implementation of [ZygSqflitePluginPlatform] that uses method channels.
class MethodChannelZygSqflitePlugin extends ZygSqflitePluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('zyg_sqflite_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
