import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'language_dropdown_menu.dart';

class UserSett extends StatelessWidget {
  UserSett({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    print(AppLocalizations.of(context)!.localeName);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.settings),
            MaterialLangMenu()
          ],
        ),
      ),
    );
  }
}
