import 'package:flutter/material.dart';
import 'package:islamy_comunity/hadeth/ahadeth_screen.dart';

class HadethName extends StatelessWidget {
  List<String> hadeth;
  String name;
  int index;
  HadethName({required this.hadeth, required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AhadethScreen.routeName,
            arguments: AhadethArgument(hadeth: hadeth, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}

class AhadethArgument {
  List<String> hadeth;
  int index;
  AhadethArgument({required this.hadeth, required this.index});
}
