import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.hadithBg), fit: BoxFit.fill)),
    );
  }
}
