import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_1/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_test_1/main.dart' as app;
import 'package:flutter_test_1/main_devdebug.dart' as app2;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Result test', () {
    testWidgets('load 5 teams', (widgetTester) async {
      app2.main();

      await widgetTester.pumpAndSettle();

      final controller = HomeController(searchAllTeamsRepository: Get.find());

      expect(controller.listLength.value, 5);
    });
  });
}
