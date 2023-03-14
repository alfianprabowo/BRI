import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/data/remote/search_all_teams_response.dart';
import 'package:flutter_test_1/app/modules/home/repositories/search_all_teams_repository.dart';
import 'package:flutter_test_1/app/modules/team_detail/team_model.dart';
import 'package:flutter_test_1/app/routes/app_pages.dart';
import 'package:flutter_test_1/flavors.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final SearchAllTeamsRepository searchAllTeamsRepository;

  HomeController({
    required this.searchAllTeamsRepository,
  });

  final ScrollController scrollController = ScrollController();

  final teamList = <Team>[].obs;
  final responseList = <Team>[].obs;
  final listLength = 0.obs;
  final isLoading = true.obs;
  final loadMore = true.obs;

  final itemPerPage = 5.obs;

  final leagueName = "".obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    initList();
    loadMoreData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    scrollController.dispose();
  }

  void initList() async {
    isLoading(true);
    final SearchAllTeamsResponse response =
        await searchAllTeamsRepository.getTeamList(
      query: <String, dynamic>{
        // ! CHANGE TO FLAVOR BASED LEAGUE
        'l': F.leagueUrl,
      },
    );

    responseList.addAll(response.teams!);

    for (var i = 0; i < itemPerPage.value; i++) {
      teamList.add(response.teams![i]);
      listLength.value++;
    }
    leagueName.value = F.leagueUrl;

    isLoading(false);
    update();
  }

  void loadMoreData() {
    isLoading(true);
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        for (var i = 0; i < itemPerPage.value; i++) {
          if (teamList.length < responseList.length) {
            loadMore(true);
            teamList.add(responseList[listLength.value]);
            listLength.value++;
            update();
          } else {
            loadMore(false);
            break;
          }
        }
      }
    });
    isLoading(false);
  }

  void toTeamDetail({required Team team}) async {
    Get.toNamed(
      Routes.TEAM_DETAIL,
      arguments: team,
    );
  }
}
