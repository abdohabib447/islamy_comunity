import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_comunity/hadeth/hadeth_name.dart';
import '../app_theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<String> ahadeth = [];

  List<String> hadethName = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) getAhadeth();
    return Container(
      child: Column(
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
            child: ahadeth.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return Center(
                          child: HadethName(
                        name: hadethName[index],
                        hadeth: ahadeth,
                        index: index,
                      ));
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: MyThemeData.primaryColotLigh,
                        thickness: 2,
                      );
                    },
                    itemCount: ahadeth.length),
          )
        ],
      ),
    );
  }

  void getAhadeth() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> hadethContent = content.split('#\r\n');
    //print(hadethContent[2]);
    ahadeth = hadethContent;
    //print(ahadeth[3]);
    List<String> hadethLines = [];
    for (int i = 0; i < hadethContent.length; i++) {
      hadethLines = hadethContent[i].split('\n');
      hadethName.add(hadethLines[0]);
    }
    setState(() {});
    //contentLines = ahadeth;
    // hadethLines has lines of ahadeth;
  }
}
