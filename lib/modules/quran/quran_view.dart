import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.quranBg), fit: BoxFit.fill)),
    );
  }
}
