import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/sura_model.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'QuranDetails';

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  late SuraModel data;
  List<String>? versesList;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (versesList == null) loadData();
    return Scaffold(
      backgroundColor: AppColor.secondColor,
      appBar: AppBar(
        backgroundColor: AppColor.secondColor,
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        title: Text(
          data.suraNameEn,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),
        iconTheme: const IconThemeData(color: AppColor.primaryColor),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppAssets.leftCorner),
              Text(
                data.suraNameAr,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
              ),
              Image.asset(AppAssets.rightCorner),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: versesList == null
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SingleChildScrollView(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: List.generate(
                              versesList!.length,
                              (index) => TextSpan(
                                text: " ${versesList![index]} [${index + 1}] ",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          // style: const TextStyle(
                          //   fontSize: 20,
                          //   fontWeight: FontWeight.bold,
                          //   color: AppColor.primaryColor,
                          // ),
                        ),
                      ),
                    ),
                  ),
          ),
          Image.asset(
            AppAssets.bottomImage,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  void loadData() async {
    String content = await rootBundle.loadString('assets/files/${data.id}.txt');
    versesList = content.split('\n');
    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {});
    });
  }
}
