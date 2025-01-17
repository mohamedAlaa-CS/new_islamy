import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_color.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? size.width * 0.06 : size.width * 0.02,
      height: size.height * 0.01,
      decoration: BoxDecoration(
        color: isActive ? AppColor.primaryColor : AppColor.gray,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
