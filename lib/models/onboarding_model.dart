import 'package:islamy/core/assets/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: AppAssets.onBoarding_1,
      title: 'Welcome To Islmi App',
      body: '',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding_2,
      title: 'Welcome To Islami',
      body: 'We Are Very Excited To Have You In Our Community',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding_3,
      title: 'Reading the Quran',
      body: 'Read, and your Lord is the Most Generous',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding_4,
      title: 'Bearish',
      body: 'Praise the name of your Lord, the Most High',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding_5,
      title: 'Holy Quran Radio',
      body:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];
}
