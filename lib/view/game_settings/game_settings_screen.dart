import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';

import 'components/team_name_list.dart';

class GameSettingsScreen extends StatelessWidget {
  const GameSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.yellow.shade200,
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text('Oyun Türünü Seçin'),
          bottom: _buildTabbar(context),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            TeamNameList(teamCount: 2),
            TeamNameList(teamCount: 4),
          ],
        ),
      ),
    );
  }

  TabBar _buildTabbar(BuildContext context) {
    return TabBar(
      padding: context.paddingNormal,
      labelColor: Colors.indigo,
      unselectedLabelColor: Colors.grey.shade600,
      indicatorColor: Colors.indigo,
      indicator: BoxDecoration(
        borderRadius: context.lowBorderRadius,
        border: Border.all(
          color: Colors.indigo,
          width: 2.0,
        ),
      ),
      unselectedLabelStyle:
          context.textTheme.headline6?.copyWith(fontSize: 20.sp),
      labelStyle: context.textTheme.headline6?.copyWith(fontSize: 20.sp),
      tabs: const [
        Tab(text: "Eşli"),
        Tab(text: "Tekli"),
      ],
    );
  }
}
