import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';

import 'team_jersey.dart';
import 'title_text.dart';

class AboutDetailTab extends StatelessWidget {
  final String? keywords;
  final String? description;

  const AboutDetailTab({
    Key? key,
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
            ),
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
