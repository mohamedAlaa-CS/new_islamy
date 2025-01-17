import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/onboarding_model.dart';

class PageViewItemWidget extends StatelessWidget {
  const PageViewItemWidget({
    super.key,
    required this.onBoardingModel,
  });

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(onBoardingModel.image)),
        const SizedBox(height: 5),
        Text(
          onBoardingModel.title,
          style: const TextStyle(
            fontSize: 24,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          textAlign: TextAlign.center,
          onBoardingModel.body,
          style: const TextStyle(
            fontSize: 20,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
