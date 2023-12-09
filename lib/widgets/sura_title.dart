import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_details_arguments.dart';
import 'package:islami_app/screens/sura_details_screen.dart';

class SuraTitle extends StatelessWidget {
  SuraTitle(this.title, this.index);
  String title;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routeName,
          arguments: SuraDetailsArgs(name: title, index: index),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
