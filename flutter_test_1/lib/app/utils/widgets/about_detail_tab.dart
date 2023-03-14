import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';

import 'team_jersey.dart';
import 'title_text.dart';

class AboutDetailTab extends StatelessWidget {
  final String? colour1, colour2, keywords;
  final String? description;

  const AboutDetailTab({
    Key? key,
    this.colour1,
    this.colour2,
    this.keywords,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: LayoutConstant.spaceM),

          // Team Keywords
          Text(
            keywords ?? '-',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const SizedBox(height: LayoutConstant.spaceM),

          // Kit Colour
          const Text(
            TextConst.jersey,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: LayoutConstant.spaceM),

          Row(
            children: [
              Row(
                children: [
                  TeamJersey(
                    color: colour1 ?? '-',
                  ),
                  const SizedBox(width: LayoutConstant.spaceL),
                  TeamJersey(
                    color: colour2 ?? '-',
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: LayoutConstant.spaceL),

          // Description
          const TitleText(text: TextConst.description),
          const SizedBox(height: LayoutConstant.spaceM),
          Text(
            description ?? '-',
          ),
        ],
      ),
    );
  }
}
