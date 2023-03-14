import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/color_const.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';
import 'package:flutter_test_1/app/utils/widgets/team_card.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  _buildList(HomeController homeController) {
    return Obx(
      () => ListView.builder(
        itemCount: homeController.teamList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(LayoutConstant.spaceM),
                child: TeamCard(
                  onTap: () {
                    homeController.toTeamDetail(
                      team: homeController.teamList[index],
                    );
                  },
                  team: homeController.teamList[index],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConst.briSportsDb),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GetX<HomeController>(
          builder: (homeController) => homeController.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  controller: homeController.scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(LayoutConstant.spaceL),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: LayoutConstant.spaceL),
                          // League Name
                          Center(
                            child: Text(
                              homeController.leagueName.value,
                              style: const TextStyle(
                                color: primaryColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: LayoutConstant.spaceXL,
                          ),
                          homeController.responseList.isEmpty
                              ? Container()
                              : Text(
                                  'Total Team : ${homeController.responseList.length.toString()}',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                          const SizedBox(
                            height: LayoutConstant.spaceXL,
                          ),
                          _buildList(homeController),
                          const SizedBox(
                            height: LayoutConstant.spaceXXL,
                          ),
                          Center(
                            child: homeController.loadMore.value == true
                                ? const CircularProgressIndicator()
                                : const Text(
                                    TextConst.allTeamsShown,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
