import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/hadith_model.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key, required this.hadithModel});

  final HadithModel hadithModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.02,
          right: size.width * 0.02,
          left: size.width * 0.02,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppAssets.leftCorner, color: AppColor.secondColor),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      hadithModel.hadithTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColor.secondColor,
                      ),
                    ),
                  ),
                ),
                Image.asset(AppAssets.rightCorner, color: AppColor.secondColor),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  hadithModel.hadithContent,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Image.asset(
              AppAssets.bottomImage,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              color: AppColor.secondColor,
            ),
          ],
        ),
      ),
    );
  }
}
