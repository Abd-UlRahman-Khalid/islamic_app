import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('ar');
              },
              child:
              settingsProvider.isEn()?
               getUnSelectedItem('العربية'):
               getSelectedItem('العربية')),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('en');
              },
              child:
              settingsProvider.isEn()?
               getSelectedItem('English'):
               getUnSelectedItem('English'))
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Theme.of(context).secondaryHeaderColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).secondaryHeaderColor,
        )
      ],
    );
  }

  Widget getUnSelectedItem(String title) {
    return Text(title, style: Theme.of(context).textTheme.headlineLarge);
  }
}
