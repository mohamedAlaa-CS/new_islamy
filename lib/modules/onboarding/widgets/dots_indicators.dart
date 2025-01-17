import 'package:flutter/material.dart';
import 'package:islamy/modules/onboarding/widgets/dot_indecator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({
    super.key,
    required this.dotsLength,
    required this.currentIndex,
  });

  final int dotsLength;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          dotsLength,
          (index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.016,
            ),
            child: DotIndicator(
              isActive: index == currentIndex,
            ),
          ),
        )
      ],
    );
  }
}
