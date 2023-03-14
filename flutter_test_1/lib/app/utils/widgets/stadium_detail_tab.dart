import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/constants/text_const.dart';

import 'title_text.dart';

class StadiumDetailTab extends StatelessWidget {
  final String? name, location, description;
  final String? image;
  final String? capacity;

  const StadiumDetailTab({
    Key? key,
    this.name,
    this.location,
    this.image,
    this.description,
    this.capacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: LayoutConstant.spaceM),

          // Stadium
          const TitleText(text: TextConst.stadium),
          const SizedBox(height: LayoutConstant.spaceM),

          // Name
          Text(
            name ?? '-',
          ),
          const SizedBox(height: LayoutConstant.spaceM),

          // Location
          Text(
            location ?? '-',
          ),
          const SizedBox(height: LayoutConstant.spaceM),

          // Capacity
          Text(
            'Capacity : $capacity',
          ),
          const SizedBox(height: LayoutConstant.spaceM),

          // Image
          SizedBox(
            height: 200,
            child: image != null
                ? Image.network(
                    image!,
                    fit: BoxFit.cover,
                  )
                : Container(),
          ),
          const SizedBox(height: LayoutConstant.spaceM),

          // Description
          Text(
            description ?? '-',
          ),
        ],
      ),
    );
  }
}
