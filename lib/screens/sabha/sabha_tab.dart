import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/providers/settings_provider.dart';
import '';

class SabhaTab extends StatefulWidget {
  @override
  State<SabhaTab> createState() => _SabhaTabState();
}

class _SabhaTabState extends State<SabhaTab> {
  double angle = 0.0;
  List<String> Azkar = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];
  int counter = 0;
  int azkarIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          //Images
          Container(
            height: MediaQuery.of(context).size.height * 0.34,
            child: Stack(children: [
              Positioned(
                child: settingProvider.isDark()
                    ? Image.asset(
                        'assets/images/head_of_seb7a_dark.png',
                        height: MediaQuery.of(context).size.height * 0.1,
                      )
                    : Image.asset(
                        'assets/images/head_of_seb7a.png',
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                left: MediaQuery.of(context).size.width * 0.46,
              ),
              Positioned(
                top: 58,
                left: MediaQuery.of(context).size.width * 0.2,
                child: GestureDetector(
                  onTap: onClick,
                  child: Transform.rotate(
                    angle: angle,
                    child: settingProvider.isDark()
                        ? Image.asset('assets/images/body_of_seb7a_dark.png',
                            height: MediaQuery.of(context).size.height * 0.28)
                        : Image.asset('assets/images/body_of_seb7a.png',
                            height: MediaQuery.of(context).size.height * 0.28),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          //عدد التسبيحات
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: 20,
          ),
          //Counter 33
          Container(
            width: 70,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //Azkar Presser
          InkWell(
            onTap: onClick,
            child: Container(
              width: 140,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(25),),
              child: Text(
                Azkar[azkarIndex],
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: settingProvider.isDark()?
                      Colors.black:Colors.white
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onClick() {
    setState(() {
      counter++;
      angle--;
      if (counter == 34) {
        counter = 0;
        azkarIndex++;
      }
      if (azkarIndex == 3) {
        azkarIndex = 0;
      }
    });
  }
}
