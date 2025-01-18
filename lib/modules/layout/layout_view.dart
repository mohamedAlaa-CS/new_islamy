import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/modules/layout/widgets/custom_bottom_nav.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
