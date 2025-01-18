import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/recent_model.dart';

class MostRecentItemWidget extends StatelessWidget {
  const MostRecentItemWidget({super.key, required this.model});

  final MostRecentModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                model.suraNameEn,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text(
                model.suraNameAr,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text(
                '${model.reverseNumber} Verses  ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Image.asset(AppAssets.recentImage)
        ],
      ),
    );
  }
}
