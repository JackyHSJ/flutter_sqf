import 'package:flutter_test/flutter_test.dart';
import 'package:zyg_sqflite_plugin/zyg_sqflite_plugin.dart';
import 'package:zyg_sqflite_plugin/zyg_sqflite_plugin_platform_interface.dart';
import 'package:zyg_sqflite_plugin/zyg_sqflite_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZygSqflitePluginPlatform
    with MockPlatformInterfaceMixin
    implements ZygSqflitePluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZygSqflitePluginPlatform initialPlatform = ZygSqflitePluginPlatform.instance;

  test('$MethodChannelZygSqflitePlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZygSqflitePlugin>());
  });

  test('getPlatformVersion', () async {
  });
}
