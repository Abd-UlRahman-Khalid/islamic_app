import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/sura_details_arguments.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //convert from pts of type object to pointer of type SuraDetailsArg polymorphism
    SuraDetailsArgs? arg =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
