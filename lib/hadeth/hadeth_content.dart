import 'package:flutter/material.dart';

class HadethContent extends StatelessWidget {
  String hadeth;
  HadethContent({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Text(
        hadeth,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
