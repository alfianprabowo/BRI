import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/color_const.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';
import 'package:flutter_test_1/app/utils/widgets/about_detail_tab.dart';
import 'package:flutter_test_1/app/utils/widgets/social_detail_tab.dart';
import 'package:flutter_test_1/app/utils/widgets/stadium_detail_tab.dart';

import 'package:get/get.dart';

import '../controllers/team_detail_controller.dart';

class TeamDetailView extends GetView<TeamDetailController> {
  const TeamDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          TextConst.teamDetail,
        ),
        centerTitle: false,
        leading: BackButton(
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: GetX<TeamDetailController>(
          builder: (controller) => Padding(
            padding: const EdgeInsets.all(LayoutConstant.spaceM),
            child: Column(
              children: [
                // Team Logo
                Container(
                  height: 125,
                  padding: const EdgeInsets.all(LayoutConstant.spaceM),
                  child: controller.model.value.strTeamBadge != null
                      ? Image.network(
                          controller.model.value.strTeamBadge!,
                          fit: BoxFit.cover,
                        )
                      : const Icon(
                          Icons.image,
                          size: 40,
                        ),
                ),

                const SizedBox(height: LayoutConstant.spaceL),

                // Team Name
                Text(
                  '${controller.model.value.strTeam!} (${controller.model.value.strTeamShort})',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: LayoutConstant.spaceM),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Formed Year
                    Text(
                      controller.model.value.intFormedYear!,
                      style: const TextStyle(),
                    ),
                    const Text(
                      ' - ',
                      style: TextStyle(),
                    ),

                    // Country
                    Text(
                      controller.model.value.strCountry!,
                      style: const TextStyle(),
                    ),
                  ],
                ),

                const SizedBox(height: LayoutConstant.spaceL),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(LayoutConstant.spaceM),
                    height: 50,
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          TabBar(
                            controller: controller.tabController,
                            labelColor: primaryColor,
                            indicatorColor: primaryColor,
                            unselectedLabelColor: Colors.grey,
                            isScrollable: true,
                            tabs: const [
                              Text(TextConst.about),
                              Text(TextConst.stadium),
                              Text(TextConst.social),
                            ],
                          ),
                          const SizedBox(
                            height: LayoutConstant.spaceM,
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: controller.tabController,
                              children: [
                                AboutDetailTab(
                                  colour1:
                                      controller.model.value.strKitColour1!,
                                  colour2:
                                      controller.model.value.strKitColour2!,
                                  description:
                                      controller.model.value.strDescriptionEN!,
                                  keywords: controller.model.value.strKeywords!,
                                ),
                                StadiumDetailTab(
                                  name: controller.model.value.strStadium,
                                  location:
                                      controller.model.value.strStadiumLocation,
                                  capacity:
                                      controller.model.value.intStadiumCapacity,
                                  image: controller.model.value.strStadiumThumb,
                                  description: controller
                                      .model.value.strStadiumDescription,
                                ),
                                SocialDetailTab(
                                  website: controller.model.value.strWebsite,
                                  facebook: controller.model.value.strFacebook,
                                  instagram:
                                      controller.model.value.strInstagram,
                                  twitter: controller.model.value.strTwitter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
