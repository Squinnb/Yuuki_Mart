import 'package:flutter/material.dart';
import 'package:yuuki_mart/Store/redux.dart';
import '../../Shared/konstants.dart';

class MaterialLangMenu extends StatelessWidget {
  MaterialLangMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: kCodeToText[store.state.locale.languageCode],
      hint: Text("Language"),
      onChanged: (String? v) {
        if (v == "English")
          store.dispatch(LanguageActions.English);
        else if (v == "日本語") store.dispatch(LanguageActions.Japanese);
      },
      items: kLangs.keys.map((String ln) {
        return DropdownMenuItem<String>(
          child: Text(ln),
          value: ln,
        );
      }).toList(),
    );
  }
}
