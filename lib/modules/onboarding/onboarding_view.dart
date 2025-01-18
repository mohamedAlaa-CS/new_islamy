import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/onboarding_model.dart';
import 'package:islamy/modules/layout/layout_view.dart';
import 'package:islamy/modules/onboarding/widgets/dots_indicators.dart';
import 'package:islamy/modules/onboarding/widgets/pageview_item_widget.dart';

class OnboardingView extends StatefulWidget {
  static const routeName = '/onboarding';

  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;

  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.secondColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //----> head image of screen
              FractionallySizedBox(
                widthFactor: 0.95,
                child: Image.asset(
                  AppAssets.headOfScreen,
                  height: size.height * 0.19,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              //----> body of screen
              Expanded(
                  child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: OnBoardingModel.onBoardingList.length,
                itemBuilder: (context, index) => PageViewItemWidget(
                  onBoardingModel: OnBoardingModel.onBoardingList[index],
                ),
              )),
              const SizedBox(height: 20),
              //----> bottom of screen (Back - Dots - Next)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 0
                      ? TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        )
                      : TextButton(
                          onPressed: () {
                            pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          },
                          child: const Text('Back'),
                        ),
                  DotsIndicators(
                    dotsLength: OnBoardingModel.onBoardingList.length,
                    currentIndex: currentIndex,
                  ),
                  TextButton(
                    onPressed: () {
                      //---> nav to layout view
                      if (currentIndex ==
                          OnBoardingModel.onBoardingList.length - 1) {
                        Navigator.pushReplacementNamed(
                            context, LayoutView.routeName);
                      }
                      //----> nav to next page
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    },
                    child: Text(currentIndex ==
                            OnBoardingModel.onBoardingList.length - 1
                        ? 'Finish'
                        : 'Next'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
