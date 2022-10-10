import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeAbout extends StatelessWidget {
  HomeAbout({Key? key}) : super(key: key);
  final Uri jasUrl = Uri.parse(
      "https://www.maff.go.jp/e/policies/standard/specific/organic_JAS.html");

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: jasUrl,
      builder: (_, idk) {
        return TextButton(
          onPressed: () async {
            if (await canLaunchUrl(jasUrl)) {
              await launchUrl(jasUrl);
            } else {
              throw "Danger bröther";
            }
          },
          child: Text(
            AppLocalizations.of(context)!.organicLink,
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        );
      },
    );
  }
}
