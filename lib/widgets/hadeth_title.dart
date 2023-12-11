import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/model/sura_details_arguments.dart';
import 'package:islami_app/screens/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/screens/quran/sura_details_screen.dart';

class HadethTitle extends StatelessWidget {
  HadethTitle(this.title);
  Hadeth title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethDetailsScreen.routeName,
          arguments: title
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
