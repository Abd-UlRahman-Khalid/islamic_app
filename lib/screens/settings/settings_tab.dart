import 'package:flutter/material.dart';
import 'package:islami_app/screens/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/providers/settings_provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'Theme',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            showThemeBottomSheet();
          },
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    color: Theme.of(context).secondaryHeaderColor, width: 1),
              ),
              child: Text(
                settingsProvider.isDark()?
                'Dark':'Light',
                style: Theme.of(context).textTheme.headlineLarge,
              )),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          'Language',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: Theme.of(context).secondaryHeaderColor, width: 1),
            ),
            child: Text(
              'English',
              style: Theme.of(context).textTheme.headlineLarge,
            ))
      ]),
    );
  }

  showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return ThemeBottomSheet();
        });
  }
}
