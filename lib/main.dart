import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/screens/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/quran/sura_details_screen.dart';
import 'package:islami_app/widgets/themes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) =>
          SettingsProvider(), //shared instance //singleton
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.dartTheme,
      themeMode: settingsProvider.currentTheme,
      locale: Locale(settingsProvider.currentLanguage),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        SuraDetailsScreen.routeName: (ctx) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (ctx) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
