import 'package:flutter_test_1/app/modules/home/providers/search_all_teams_provider.dart';
import 'package:flutter_test_1/app/modules/home/repositories/search_all_teams_repository.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchAllTeamsProvider>(() => SearchAllTeamsProvider());
    Get.lazyPut<SearchAllTeamsRepository>(() => SearchAllTeamsRepository());

    Get.lazyPut<HomeController>(
      () => HomeController(
        searchAllTeamsRepository: Get.find(),
      ),
    );
  }
}
