import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/models/hadith_model.dart';

import 'widgets/hadith_item_widget.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithModel> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readHadith();
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.hadithBg), fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              AppAssets.headOfScreen,
              height: size.height * .19,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: CarouselSlider(
                  items: hadithList.map((hadithModel) {
                    return HadithItemWidget(hadithModel: hadithModel);
                  }).toList(),
                  options: CarouselOptions(
                    height: double.infinity,
                    aspectRatio: 313 / 618,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            SizedBox(
              height: size.height * 0.012,
            )
          ],
        ),
      ),
    );
  }

  Future<void> readHadith() async {
    for (int i = 1; i <= 50; i++) {
      String hadithContent =
          await rootBundle.loadString('assets/files/hadith/h$i.txt');
      int indexFirst = hadithContent.indexOf('\n');
      String hadithTitle = hadithContent.substring(0, indexFirst);
      String content = hadithContent.substring(indexFirst);
      hadithList
          .add(HadithModel(hadithContent: content, hadithTitle: hadithTitle));
    }
    setState(() {});
  }
}
