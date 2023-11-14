import 'package:flutter/material.dart';
import 'package:islamy_comunity/app_theme.dart';
import 'package:islamy_comunity/hadeth/ahadeth_screen.dart';
import 'package:islamy_comunity/home_screen.dart';
import 'package:islamy_comunity/quran/quran_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
@override
  build(context){
  return  MaterialApp(
    initialRoute: HomeScreen.routeName,
    routes: {
     HomeScreen.routeName : (context)=> HomeScreen(),
      QuranScreen.routeName : (context)=>QuranScreen(),
      AhadethScreen.routeName : (context)=>AhadethScreen()
    },
     theme: MyThemeData.thmeLight,
    // darkTheme: MyThemeData.themeDark(),
  );
}
}