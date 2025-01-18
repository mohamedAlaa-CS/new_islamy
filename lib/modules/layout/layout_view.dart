import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/modules/layout/widgets/custom_bottom_nav.dart';
import 'package:islamy/modules/quran/quran_view.dart';
import 'package:islamy/modules/radio/radio_view.dart';
import 'package:islamy/modules/sebha/sebha_view.dart';
import 'package:islamy/modules/time/time_view.dart';

import '../hadith/hadith_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: CustomBottomNav(
              iconImage: AppAssets.quranIcon,
              isSelected: selectedIndex == 0,
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNav(
              iconImage: AppAssets.hadithIcon,
              isSelected: selectedIndex == 1,
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNav(
              iconImage: AppAssets.sebhaIcon,
              isSelected: selectedIndex == 2,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNav(
              iconImage: AppAssets.radioIcon,
              isSelected: selectedIndex == 3,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: CustomBottomNav(
              iconImage: AppAssets.timeIcon,
              isSelected: selectedIndex == 4,
            ),
            label: 'About',
          ),
        ],
      ),
    );
  }
}
