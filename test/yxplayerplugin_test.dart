import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yxplayerplugin/yxplayerplugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('yxplayerplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Yxplayerplugin.platformVersion, '42');
  });
}
