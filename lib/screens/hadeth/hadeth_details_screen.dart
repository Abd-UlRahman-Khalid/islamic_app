import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/providers/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingProvider.getMainBackGroundImage()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.title),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            margin: const EdgeInsets.all(10),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: Container(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Text(arg.content,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headlineLarge),
                )),
          ),
        ),
      ),
    );
  }
}
