import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:point_calculation_in_101/view/game_settings/game_settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text('101 Puan Hesapla'),
        actions: [
          IconButton(
            splashRadius: 20.r,
            icon: const Icon(Icons.library_add),
            onPressed: () {
              context.navigateToPage(const GameSettingsScreen());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("Geçmiş Oyun Bulunmamaktadır."),
      ),
    );
  }
}
