import 'package:flutter/material.dart';
import 'package:islamy_comunity/app_theme.dart';
import 'package:islamy_comunity/hadeth/hadeth_tab.dart';
import 'package:islamy_comunity/quran/quran_tab.dart';
import 'package:islamy_comunity/quran/sura_name.dart';
import 'package:islamy_comunity/radio/radio_tab.dart';
import 'package:islamy_comunity/sepha/sepha_tab.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = 'home screen';


  @override
  State<StatefulWidget> createState() {
   return _HomeScreenState();
  }
}
class _HomeScreenState extends State{
  int index = 0;
  List<Widget>screenContent = [
   QuranTab(),
    HadethTab(),
    RadioTab(),
    SephaTab(),
  ];
  build(context){
    return   Stack(
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
          body: screenContent[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
                onTap: (currentIndex){
                  index = currentIndex;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                    label: 'quran'
                  ),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth_icom.png')),
                      label: 'hadeth'
                  ),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                      label: 'radio'
                  ),
                  BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sepha_icon.png')),
                      label: 'sepha'
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}
