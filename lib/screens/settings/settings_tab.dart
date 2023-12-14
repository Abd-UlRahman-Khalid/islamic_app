import 'package:flutter/material.dart';
import 'package:islami_app/screens/settings/language_bottom_sheet.dart';
import 'package:islami_app/screens/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          AppLocalizations.of(context)!.theme,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 20
          ),
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
          AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 20
          ),
        ),
        SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: (){
            showLanguageBottomSheet();
          },
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    color: Theme.of(context).secondaryHeaderColor, width: 1),
              ),
              child: Text(
                settingsProvider.isEn()?
                'English':'العربية',
                style: Theme.of(context).textTheme.headlineLarge,
              )),
        )
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
  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return LanguageBottomSheet();
        });
  }
}
