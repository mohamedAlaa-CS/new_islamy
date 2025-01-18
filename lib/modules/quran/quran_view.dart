import 'package:flutter/material.dart';
import 'package:islamy/core/assets/app_assets.dart';
import 'package:islamy/core/theme/app_color.dart';
import 'package:islamy/models/recent_model.dart';
import 'package:islamy/models/sura_model.dart';
import 'package:islamy/modules/quran/widgets/most_recent_item_widget.dart';
import 'package:islamy/modules/quran/widgets/sura_item_widget.dart';

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
  List<SuraModel> suraList = [
    SuraModel(
        id: '1', suraNameAr: 'الفاتحه', suraNameEn: 'Al-Fatiha', verseCount: 7),
    SuraModel(
        id: '2',
        suraNameAr: 'البقرة',
        suraNameEn: 'Al-Baqarah',
        verseCount: 286),
    SuraModel(
        id: '3',
        suraNameAr: 'آل عمران',
        suraNameEn: 'Aal-E-Imran',
        verseCount: 200),
    SuraModel(
        id: '4', suraNameAr: 'النساء', suraNameEn: 'An-Nisa', verseCount: 176),
    SuraModel(
        id: '5',
        suraNameAr: 'المائدة',
        suraNameEn: 'Al-Ma\'idah',
        verseCount: 120),
    SuraModel(
        id: '6',
        suraNameAr: 'الأنعام',
        suraNameEn: 'Al-An\'am',
        verseCount: 165),
    SuraModel(
        id: '7',
        suraNameAr: 'الأعراف',
        suraNameEn: 'Al-A\'raf',
        verseCount: 206),
    SuraModel(
        id: '8', suraNameAr: 'الأنفال', suraNameEn: 'Al-Anfal', verseCount: 75),
    SuraModel(
        id: '9',
        suraNameAr: 'التوبة',
        suraNameEn: 'At-Tawbah',
        verseCount: 129),
    SuraModel(
        id: '10', suraNameAr: 'يونس', suraNameEn: 'Yunus', verseCount: 109),
    SuraModel(id: '11', suraNameAr: 'هود', suraNameEn: 'Hud', verseCount: 123),
    SuraModel(
        id: '12', suraNameAr: 'يوسف', suraNameEn: 'Yusuf', verseCount: 111),
    SuraModel(
        id: '13', suraNameAr: 'الرعد', suraNameEn: 'Ar-Ra\'d', verseCount: 43),
    SuraModel(
        id: '14', suraNameAr: 'إبراهيم', suraNameEn: 'Ibrahim', verseCount: 52),
    SuraModel(
        id: '15', suraNameAr: 'الحجر', suraNameEn: 'Al-Hijr', verseCount: 99),
    SuraModel(
        id: '16', suraNameAr: 'النحل', suraNameEn: 'An-Nahl', verseCount: 128),
    SuraModel(
        id: '17',
        suraNameAr: 'الإسراء',
        suraNameEn: 'Al-Isra',
        verseCount: 111),
    SuraModel(
        id: '18', suraNameAr: 'الكهف', suraNameEn: 'Al-Kahf', verseCount: 110),
    SuraModel(
        id: '19', suraNameAr: 'مريم', suraNameEn: 'Maryam', verseCount: 98),
    SuraModel(id: '20', suraNameAr: 'طه', suraNameEn: 'Ta-Ha', verseCount: 135),
    SuraModel(
        id: '21',
        suraNameAr: 'الأنبياء',
        suraNameEn: 'Al-Anbiya',
        verseCount: 112),
    SuraModel(
        id: '22', suraNameAr: 'الحج', suraNameEn: 'Al-Hajj', verseCount: 78),
    SuraModel(
        id: '23',
        suraNameAr: 'المؤمنون',
        suraNameEn: 'Al-Mu\'minun',
        verseCount: 118),
    SuraModel(
        id: '24', suraNameAr: 'النّور', suraNameEn: 'An-Nur', verseCount: 64),
    SuraModel(
        id: '25',
        suraNameAr: 'الفرقان',
        suraNameEn: 'Al-Furqan',
        verseCount: 77),
    SuraModel(
        id: '26',
        suraNameAr: 'الشعراء',
        suraNameEn: 'Ash-Shu\'ara',
        verseCount: 227),
    SuraModel(
        id: '27', suraNameAr: 'النّمل', suraNameEn: 'An-Naml', verseCount: 93),
    SuraModel(
        id: '28', suraNameAr: 'القصص', suraNameEn: 'Al-Qasas', verseCount: 88),
    SuraModel(
        id: '29',
        suraNameAr: 'العنكبوت',
        suraNameEn: 'Al-Ankabut',
        verseCount: 69),
    SuraModel(
        id: '30', suraNameAr: 'الرّوم', suraNameEn: 'Ar-Rum', verseCount: 60),
    SuraModel(
        id: '31', suraNameAr: 'لقمان', suraNameEn: 'Luqman', verseCount: 34),
    SuraModel(
        id: '32', suraNameAr: 'السجدة', suraNameEn: 'As-Sajda', verseCount: 30),
    SuraModel(
        id: '33',
        suraNameAr: 'الأحزاب',
        suraNameEn: 'Al-Ahzab',
        verseCount: 73),
    SuraModel(id: '34', suraNameAr: 'سبأ', suraNameEn: 'Saba', verseCount: 54),
    SuraModel(
        id: '35', suraNameAr: 'فاطر', suraNameEn: 'Fatir', verseCount: 45),
    SuraModel(id: '36', suraNameAr: 'يس', suraNameEn: 'Ya-Sin', verseCount: 83),
    SuraModel(
        id: '37',
        suraNameAr: 'الصافات',
        suraNameEn: 'As-Saffat',
        verseCount: 182),
    SuraModel(id: '38', suraNameAr: 'ص', suraNameEn: 'Sad', verseCount: 88),
    SuraModel(
        id: '39', suraNameAr: 'الزمر', suraNameEn: 'Az-Zumar', verseCount: 75),
    SuraModel(
        id: '40', suraNameAr: 'غافر', suraNameEn: 'Ghafir', verseCount: 85),
    SuraModel(
        id: '41', suraNameAr: 'فصّلت', suraNameEn: 'Fussilat', verseCount: 54),
    SuraModel(
        id: '42',
        suraNameAr: 'الشورى',
        suraNameEn: 'Ash-Shura',
        verseCount: 53),
    SuraModel(
        id: '43',
        suraNameAr: 'الزخرف',
        suraNameEn: 'Az-Zukhruf',
        verseCount: 89),
    SuraModel(
        id: '44',
        suraNameAr: 'الدّخان',
        suraNameEn: 'Ad-Dukhan',
        verseCount: 59),
    SuraModel(
        id: '45',
        suraNameAr: 'الجاثية',
        suraNameEn: 'Al-Jathiya',
        verseCount: 37),
    SuraModel(
        id: '46',
        suraNameAr: 'الأحقاف',
        suraNameEn: 'Al-Ahqaf',
        verseCount: 35),
    SuraModel(
        id: '47', suraNameAr: 'محمد', suraNameEn: 'Muhammad', verseCount: 38),
    SuraModel(
        id: '48', suraNameAr: 'الفتح', suraNameEn: 'Al-Fath', verseCount: 29),
    SuraModel(
        id: '49',
        suraNameAr: 'الحجرات',
        suraNameEn: 'Al-Hujurat',
        verseCount: 18),
    SuraModel(id: '50', suraNameAr: 'ق', suraNameEn: 'Qaf', verseCount: 45),
    SuraModel(
        id: '51',
        suraNameAr: 'الذاريات',
        suraNameEn: 'Adh-Dhariyat',
        verseCount: 60),
    SuraModel(
        id: '52', suraNameAr: 'الطور', suraNameEn: 'At-Tur', verseCount: 49),
    SuraModel(
        id: '53', suraNameAr: 'النجم', suraNameEn: 'An-Najm', verseCount: 62),
    SuraModel(
        id: '54', suraNameAr: 'القمر', suraNameEn: 'Al-Qamar', verseCount: 55),
    SuraModel(
        id: '55',
        suraNameAr: 'الرحمن',
        suraNameEn: 'Ar-Rahman',
        verseCount: 78),
    SuraModel(
        id: '56',
        suraNameAr: 'الواقعة',
        suraNameEn: 'Al-Waqi\'a',
        verseCount: 96),
    SuraModel(
        id: '57', suraNameAr: 'الحديد', suraNameEn: 'Al-Hadid', verseCount: 29),
    SuraModel(
        id: '58',
        suraNameAr: 'المجادلة',
        suraNameEn: 'Al-Mujadila',
        verseCount: 22),
    SuraModel(
        id: '59', suraNameAr: 'الحشر', suraNameEn: 'Al-Hashr', verseCount: 24),
    SuraModel(
        id: '60',
        suraNameAr: 'الممتحنة',
        suraNameEn: 'Al-Mumtahina',
        verseCount: 13),
    SuraModel(
        id: '61', suraNameAr: 'الصف', suraNameEn: 'As-Saff', verseCount: 14),
    SuraModel(
        id: '62',
        suraNameAr: 'الجمعة',
        suraNameEn: 'Al-Jumu\'a',
        verseCount: 11),
    SuraModel(
        id: '63',
        suraNameAr: 'المنافقون',
        suraNameEn: 'Al-Munafiqun',
        verseCount: 11),
    SuraModel(
        id: '64',
        suraNameAr: 'التغابن',
        suraNameEn: 'At-Taghabun',
        verseCount: 18),
    SuraModel(
        id: '65', suraNameAr: 'الطلاق', suraNameEn: 'At-Talaq', verseCount: 12),
    SuraModel(
        id: '66',
        suraNameAr: 'التحريم',
        suraNameEn: 'At-Tahrim',
        verseCount: 12),
    SuraModel(
        id: '67', suraNameAr: 'الملك', suraNameEn: 'Al-Mulk', verseCount: 30),
    SuraModel(
        id: '68', suraNameAr: 'القلم', suraNameEn: 'Al-Qalam', verseCount: 52),
    SuraModel(
        id: '69',
        suraNameAr: 'الحاقة',
        suraNameEn: 'Al-Haqqah',
        verseCount: 52),
    SuraModel(
        id: '70',
        suraNameAr: 'المعارج',
        suraNameEn: 'Al-Ma\'arij',
        verseCount: 44),
    SuraModel(id: '71', suraNameAr: 'نوح', suraNameEn: 'Nuh', verseCount: 28),
    SuraModel(
        id: '72', suraNameAr: 'الجن', suraNameEn: 'Al-Jinn', verseCount: 28),
    SuraModel(
        id: '73',
        suraNameAr: 'المزّمّل',
        suraNameEn: 'Al-Muzzammil',
        verseCount: 20),
    SuraModel(
        id: '74',
        suraNameAr: 'المدّثر',
        suraNameEn: 'Al-Muddathir',
        verseCount: 56),
    SuraModel(
        id: '75',
        suraNameAr: 'القيامة',
        suraNameEn: 'Al-Qiyamah',
        verseCount: 40),
    SuraModel(
        id: '76',
        suraNameAr: 'الإنسان',
        suraNameEn: 'Al-Insan',
        verseCount: 31),
    SuraModel(
        id: '77',
        suraNameAr: 'المرسلات',
        suraNameEn: 'Al-Mursalat',
        verseCount: 50),
    SuraModel(
        id: '78', suraNameAr: 'النبأ', suraNameEn: 'An-Naba\'', verseCount: 40),
    SuraModel(
        id: '79',
        suraNameAr: 'النازعات',
        suraNameEn: 'An-Nazi\'at',
        verseCount: 46),
    SuraModel(id: '80', suraNameAr: 'عبس', suraNameEn: 'Abasa', verseCount: 42),
    SuraModel(
        id: '81',
        suraNameAr: 'التكوير',
        suraNameEn: 'At-Takwir',
        verseCount: 29),
    SuraModel(
        id: '82',
        suraNameAr: 'الإنفطار',
        suraNameEn: 'Al-Infitar',
        verseCount: 19),
    SuraModel(
        id: '83',
        suraNameAr: 'المطفّفين',
        suraNameEn: 'Al-Mutaffifin',
        verseCount: 36),
    SuraModel(
        id: '84',
        suraNameAr: 'الإنشقاق',
        suraNameEn: 'Al-Inshiqaq',
        verseCount: 25),
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
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SuraItemWidget(
                    suraModel: suraList[index],
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    color: AppColor.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  itemCount: suraList.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
