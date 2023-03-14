import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/team_detail/bindings/team_detail_binding.dart';
import '../modules/team_detail/views/team_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEAM_DETAIL,
      page: () => const TeamDetailView(),
      binding: TeamDetailBinding(),
    ),
  ];
}
