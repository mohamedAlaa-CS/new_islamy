import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/recent_model.dart';
import 'package:islamy/models/sura_model.dart';
import 'package:islamy/modules/quran/quran_details.dart';
import 'package:islamy/modules/quran/widgets/most_recent_item_widget.dart';
import 'package:islamy/modules/quran/widgets/sura_item_widget.dart';
import 'package:lottie/lottie.dart';

class QuranView extends StatefulWidget {
  QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
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

  List<SuraModel> filterSuraList = [];

  @override
  void initState() {
    super.initState();
    filterSuraList = [...SuraModel.suraList];
  }

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
          child: SingleChildScrollView(
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
                  onChanged: (value) {
                    /// logic to search in sura list
                    searchSuraList(value);
                  },
                  style: const TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
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
                const SizedBox(height: 6),
                const Text(
                  'Sura List',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColor.white),
                ),
                const SizedBox(height: 6),
                //------> sura list
                SuraModel.suraList.isEmpty
                    ? Center(
                        child: Lottie.asset(
                        AppAssets.emptyList,
                        height: size.height * 0.3,
                      ))
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              QuranDetails.routeName,
                              arguments: SuraModel.suraList[index],
                            );
                          },
                          child: SuraItemWidget(
                            suraModel: SuraModel.suraList[index],
                          ),
                        ),
                        separatorBuilder: (context, index) => const Divider(
                          color: AppColor.white,
                          indent: 20,
                          endIndent: 20,
                        ),
                        itemCount: SuraModel.suraList.length,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

//----> filter sura list method
  void searchSuraList(String value) {
    setState(() {
      if (value.isEmpty) {
        SuraModel.suraList = filterSuraList;
      } else {
        SuraModel.suraList = filterSuraList.where((suraModel) {
          return suraModel.suraNameAr
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
              suraModel.suraNameEn.toLowerCase().contains(value.toLowerCase());
        }).toList();
      }
    });
  }
}
