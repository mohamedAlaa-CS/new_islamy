import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.radioBg), fit: BoxFit.fill)),
    );
  }
}
