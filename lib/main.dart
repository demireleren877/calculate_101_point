import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:point_calculation_in_101/view/home/home_screen.dart';
import 'package:kartal/kartal.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 798),
      builder: (resp) => MaterialApp(
        theme: ThemeData.light().copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              textStyle: context.textTheme.headline6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(45.r),
                ),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: '101 Puan Hesapla',
        home: const HomeScreen(),
      ),
    );
  }
}
