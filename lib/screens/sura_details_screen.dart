import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/sura_details_arguments.dart';
import 'package:islami_app/widgets/vers_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    //convert from pts of type object to pointer of type SuraDetailsArg polymorphism
    SuraDetailsArgs? arg =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;
    if (verses.isEmpty) readFile(arg.index + 1);

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
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
              margin: EdgeInsets.all(15),
              color: Colors.white,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              child: ListView.separated(
                  itemBuilder: (_, index) => VersWidget(verses[index],index+1),
                  itemCount: verses.length,
                  separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      height: 1,
                      width: double.infinity),
                ),
            ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}
