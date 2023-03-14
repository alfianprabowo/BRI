import 'package:flutter/material.dart';
import 'package:flutter_test_1/app/utils/constants/layout_const.dart';
import 'package:flutter_test_1/app/utils/hex_color.dart';

class TeamJersey extends StatelessWidget {
  final String? color;

  const TeamJersey({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return color != null
        ? Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                LayoutConstant.spaceS,
              ),
              border: Border.all(
                color: Colors.grey,
              ),
              color: HexColor(color!),
            ),
          )
        : Container();
  }
}
