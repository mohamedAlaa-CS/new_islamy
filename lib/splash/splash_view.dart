import 'dart:async';

import 'package:flutter/material.dart';

import '/core/assets/app_assets.dart';
import '/modules/onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = 'SplashView';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        // nav to layout view

        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppAssets.splash_1,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
