import 'package:flutter/material.dart';
import 'package:islamy/core/theme/app_color.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.iconImage,
    required this.isSelected,
  });

  final String iconImage;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColor.secondColor.withOpacity(.6) : null,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ImageIcon(
        AssetImage(iconImage),
      ),
    );
  }
}
