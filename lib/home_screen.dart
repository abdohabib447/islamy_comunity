import 'package:flutter/material.dart';
import 'package:islamy_comunity/app_theme.dart';
import 'package:islamy_comunity/quran/sura_name.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home screen';
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background_light.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Eslamy',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(child: Image.asset('assets/images/quran_screen.png')),
              Divider(
                color: MyThemeData.primaryColotLigh,
                thickness: 2,
              ),
              Text(
                'SuraName',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Divider(
                color: MyThemeData.primaryColotLigh,
                thickness: 2,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context , index){
                     return Center(
                       child: InkWell(
                         onTap: (){},
                           child: SuraName(name: suraName[index],)
                       )
                     );
                    },
                    separatorBuilder: (context , index){
                      return Divider(
                        color: MyThemeData.primaryColotLigh,
                        thickness: 2,
                      );
                    },
                    itemCount: suraName.length),
              )
            ],
          ),
        ),
      ],
    );
  }
}
