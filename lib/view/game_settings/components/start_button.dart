import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:point_calculation_in_101/view/calculation/calculation_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
    required this.teamCount,
  }) : super(key: key);
  final int teamCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 25.h),
        height: 60.h,
        width: 180.w,
        child: ElevatedButton(
          onPressed: () {
            context.navigateToPage(CalculationScreen(teamCount: teamCount));
          },
          child: const Text(
            "Oyunu Başlat",
          ),
        ),
      ),
    );
  }
}
