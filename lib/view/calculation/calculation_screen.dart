import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({Key? key, required this.teamCount})
      : super(key: key);
  final int teamCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Container(
        padding: context.verticalPaddingMedium,
        height: context.height,
        child: ListView.separated(
          separatorBuilder: (context, index) => VerticalDivider(
            thickness: 2,
            color: Colors.indigo.shade900,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: teamCount,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(
                  "Aykut",
                  style: context.textTheme.headline4?.copyWith(
                    decoration: TextDecoration.underline,
                    color: Colors.indigo.shade900,
                    fontFamily: GoogleFonts.caveat().fontFamily,
                  ),
                ),
                SizedBox(
                  height: context.height * 0.8,
                  width: context.dynamicWidth(1 / teamCount - 0.031),
                  child: ListView.builder(
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Text(
                          "101",
                          style: context.textTheme.headline4?.copyWith(
                            color: Colors.indigo.shade900,
                            fontFamily: GoogleFonts.caveat().fontFamily,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
