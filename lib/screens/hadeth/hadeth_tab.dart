import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/widgets/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if(allHadethList.isEmpty)
    loadAhadeth();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/ahadeth_header_image.png'),
          
          Expanded(
            flex: 5,
            child: ListView.separated(
              itemBuilder: (_, index) => HadethTitle(allHadethList[index]),
              itemCount: allHadethList.length,
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).secondaryHeaderColor,
                height: 1,
                width: double.infinity,
              ),),)
        ],
      ),
    );
  }

  void loadAhadeth() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadethContent = content.split('#');
    for (int i = 0; i < allAhadethContent.length; i++) {
      String singleHadeth = allAhadethContent[i].trim();
      int firstLineIndex = singleHadeth.indexOf('\n');

      String title = singleHadeth.substring(0, firstLineIndex);
      String content = singleHadeth.substring(firstLineIndex + 1);
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);
      // List<String>singleHadethLines=singleHadeth.split('\n');
      // String title=singleHadethLines[0];
      // singleHadethLines.removeAt(0);
      // String content=singleHadethLines.join('\n');
    }
    allHadethList = hadethList;
    setState(() {
      
    });
  }
}
