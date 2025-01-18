import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/recent_model.dart';
import 'package:islamy/modules/quran/widgets/most_recent_item_widget.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<MostRecentModel> mostRecentList = [
    MostRecentModel(
        id: 1,
        suraNameAr: "الأنبياء",
        suraNameEn: "Al-Anbiya",
        reverseNumber: 112),
    MostRecentModel(
        id: 2,
        suraNameAr: "الفاتحه",
        suraNameEn: "Al-Fatiha",
        reverseNumber: 7),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBg),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //---> head of screen
              FractionallySizedBox(
                widthFactor: .8,
                child: Image.asset(
                  AppAssets.headOfScreen,
                  height: size.height * .19,
                  fit: BoxFit.cover,
                ),
              ),
              //-----> search field
              TextFormField(
                cursorColor: AppColor.primaryColor,
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage(
                        AppAssets.quranIcon,
                      ),
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Most Recent',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white),
              ),
              const SizedBox(height: 10),
              //----> most recent list
              SizedBox(
                height: size.height * 0.18,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: mostRecentList.length,
                  itemBuilder: (context, index) => MostRecentItemWidget(
                    model: mostRecentList[index],
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
