import 'package:flutter/material.dart';
import 'package:islamy_comunity/app_theme.dart';
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
      QuranScreen.routeName : (context)=>QuranScreen()
    },
     theme: MyThemeData.thmeLight,
    // darkTheme: MyThemeData.themeDark(),
  );
}
}