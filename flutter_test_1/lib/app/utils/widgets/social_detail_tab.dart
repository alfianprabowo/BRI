import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/color_const.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';

import 'title_text.dart';

class SocialDetailTab extends StatelessWidget {
  final String? facebook, twitter, instagram, website;
  final Function? onTap;

  const SocialDetailTab({
    Key? key,
    this.facebook,
    this.twitter,
    this.instagram,
    this.website,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: LayoutConstant.spaceM),

        const TitleText(text: TextConst.website),
        const SizedBox(height: LayoutConstant.spaceM),
        // Team Website
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                ),
                text: website ?? '-',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    onTap;
                  },
              ),
            ],
          ),
        ),

        const SizedBox(height: LayoutConstant.spaceXL),
        const TitleText(text: TextConst.facebook),
        const SizedBox(height: LayoutConstant.spaceM),

        // Facebook
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: const TextStyle(
                  color: primaryColor,
                ),
                text: facebook ?? '-',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    onTap;
                  },
              ),
            ],
          ),
        ),
        const SizedBox(height: LayoutConstant.spaceXL),
        const TitleText(text: TextConst.instagram),
        const SizedBox(height: LayoutConstant.spaceM),

        // Instagram
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: const TextStyle(
                  color: primaryColor,
                ),
                text: instagram ?? '-',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    onTap;
                  },
              ),
            ],
          ),
        ),
        const SizedBox(height: LayoutConstant.spaceXL),
        const TitleText(text: TextConst.twitter),
        const SizedBox(height: LayoutConstant.spaceM),
        // Twitter
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: const TextStyle(
                  color: primaryColor,
                ),
                text: twitter ?? '-',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    onTap;
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
