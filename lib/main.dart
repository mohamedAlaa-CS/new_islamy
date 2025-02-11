import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_theme.dart';
import 'package:islamy/modules/layout/layout_view.dart';
import 'package:islamy/modules/onboarding/onboarding_view.dart';
import 'package:islamy/modules/quran/quran_details.dart';
import 'package:islamy/splash/splash_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        OnboardingView.routeName: (_) => const OnboardingView(),
        QuranDetails.routeName: (_) => const QuranDetails(),
      },
    );
  }
}
