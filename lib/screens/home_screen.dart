import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/screens/hadeth/hadeth_tab.dart';
import 'package:islami_app/screens/quran/quran_tab.dart';
import 'package:islami_app/screens/radio/radio_tab.dart';
import 'package:islami_app/screens/sabha/sabha_tab.dart';
import 'package:islami_app/screens/settings/settings_tab.dart';
import 'package:islami_app/widgets/themes.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingProvider.getMainBackGroundImage()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (newlySelectedIndex) {
                setState(() {
                  selectedIndex = newlySelectedIndex;
                });
              },
              currentIndex: selectedIndex,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_quran.png'),
                    ),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                    ),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_sebha.png'),
                    ),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: const ImageIcon(
                      AssetImage('assets/images/ic_radio.png'),
                    ),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: Icon(Icons.settings),
                    label: 'Settings'),
              ]),
          appBar: AppBar(
            title: const Text('Islami'),
          ),
          backgroundColor: Colors.transparent,
          body: tabs[selectedIndex]),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SabhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
