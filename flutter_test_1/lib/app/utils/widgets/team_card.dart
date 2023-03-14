import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/modules/team_detail/team_model.dart';
import 'package:flutter_test_1/app/utils/constants/color_const.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';

class TeamCard extends StatelessWidget {
  final Team team;
  final VoidCallback onTap;

  const TeamCard({
    Key? key,
    required this.team,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Material(
        borderRadius: BorderRadius.circular(
          LayoutConstant.spaceM,
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(LayoutConstant.spaceS),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(LayoutConstant.spaceM),

                  // Team Logo
                  child: team.strTeamBadge != null
                      ? Image.network(
                          team.strTeamBadge!,
                          fit: BoxFit.cover,
                        )
                      : const Icon(
                          Icons.image,
                          size: 40,
                        ),
                ),
                const SizedBox(width: LayoutConstant.spaceM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Team Name
                      Text(
                        team.strTeam != null ? '${team.strTeam}' : '-',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const SizedBox(height: LayoutConstant.spaceM),

                      // Team Keywords
                      Text(
                        team.strKeywords != null ? '${team.strKeywords}' : '-',
                        style: const TextStyle(
                          color: Colors.grey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const SizedBox(height: LayoutConstant.spaceM),

                      // Team Stadium
                      Text(
                        team.strAlternate != null
                            ? '${team.strAlternate}'
                            : '-',
                        style: const TextStyle(
                          color: Colors.grey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
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
