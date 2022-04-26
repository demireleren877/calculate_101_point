import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

import 'start_button.dart';
import 'team_field.dart';

class TeamNameList extends StatelessWidget {
  const TeamNameList({
    Key? key,
    required this.teamCount,
  }) : super(key: key);

  final int teamCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
      height: context.height,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: teamCount,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${index + 1}. Takımın İsmi:",
                style: context.textTheme.headline6,
              ),
              context.emptySizedHeightBoxLow,
              const TeamField(),
              index == teamCount - 1
                  ? StartButton(
                      teamCount: teamCount,
                    )
                  : context.emptySizedHeightBoxNormal,
            ],
          );
        },
      ),
    );
  }
}
