import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.sebhaBg), fit: BoxFit.fill)),
    );
  }
}
