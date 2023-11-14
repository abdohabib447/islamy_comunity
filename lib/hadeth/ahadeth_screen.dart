import 'package:flutter/material.dart';
import 'package:islamy_comunity/hadeth/hadeth_content.dart';
import 'package:islamy_comunity/hadeth/hadeth_name.dart';

class AhadethScreen extends StatelessWidget {
  static const String routeName = 'ahadeth screen';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as AhadethArgument;
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background_light.png',
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Ahadith',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: HadethContent(hadeth: args.hadeth[args.index]),
          ),
        )
      ],
    );
  }
}
