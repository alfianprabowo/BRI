import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/modules/team_detail/team_model.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final Rx<Team> model = const Team().obs;

  dynamic team = Get.arguments;

  final List<Tab> detailTabs = <Tab>[
    const Tab(text: TextConst.about),
    const Tab(text: TextConst.stadium),
    const Tab(text: TextConst.social),
  ];

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    model.value = team;
    tabController = TabController(length: detailTabs.length, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    tabController.dispose();
  }

  Future<void> launchInBrowser(String url) async {
    var urlTeam = Uri(
      scheme: 'https',
      host: url,
    );
    if (!await launchUrl(
      urlTeam,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
