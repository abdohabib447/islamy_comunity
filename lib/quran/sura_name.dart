import 'package:flutter/material.dart';

class SuraName extends StatelessWidget{
  String name ;
  SuraName({required this.name});
  @override
  Widget build(BuildContext context) {
   return Text(
       name,
     style: Theme.of(context).textTheme.bodySmall,
   );
  }

}