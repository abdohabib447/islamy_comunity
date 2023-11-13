import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_comunity/quran/soura-details.dart';
import 'package:islamy_comunity/quran/sura_name.dart';

import '../app_theme.dart';

class QuranScreen extends StatefulWidget {
  static const String routeName = 'quran screen';

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> quran = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranArguments;
    if (quran.isEmpty) quranContent(args.index);
    return Stack(children: [
      Image.asset('assets/images/main_background_light.png'),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          centerTitle: true,
        ),
        body: quran.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  return SouraDetails(details: quran[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: MyThemeData.primaryColotLigh,
                    thickness: 2,
                  );
                },
                itemCount: quran.length),
      )
    ]);
  }

  void quranContent(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> newContent = content.split('\n');
    quran = newContent;
    setState(() {});
  }
}
