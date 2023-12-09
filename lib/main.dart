import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/sura_details_screen.dart';
import 'package:islami_app/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes:{
        HomeScreen.routeName :(ctx)=>HomeScreen(),
        SuraDetailsScreen.routeName :(ctx)=>SuraDetailsScreen(),
      } ,
      initialRoute:HomeScreen.routeName ,
    );
  }
}

