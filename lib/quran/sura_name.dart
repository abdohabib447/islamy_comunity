import 'package:flutter/material.dart';
import 'package:islamy_comunity/quran/quran_Screen.dart';

class SuraName extends StatelessWidget{
  String name ;
  int index;
  SuraName({required this.name , required this.index});
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       Navigator.of(context).pushNamed(QuranScreen.routeName ,
           arguments: QuranArguments(name: name, index: index));
     },
     child: Text(
         name,
       style: Theme.of(context).textTheme.bodySmall,
     ),
   );
  }

}
class QuranArguments{
  String name;
  int index;
  QuranArguments({required this.name , required this.index});
}