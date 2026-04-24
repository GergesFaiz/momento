import 'package:flutter/material.dart';
import 'package:momento/Providers/language_provider.dart';
import 'package:momento/l10n/app_localizations.dart';
import 'package:momento/utils/app_colors.dart';
import 'package:momento/utils/app_styles.dart';
import 'package:momento/utils/screen_utils.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    double width = context.width;
    double height = context.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: width * 0.04,
        horizontal: height * 0.04,
      ),
      child: Column(
        spacing: height * 0.02,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              //todo: change language to english
              languageProvider.changeLanguage(Locale('ar'));
            },
            child: languageProvider.appLanguage == 'ar'
                ? getSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.arabic,
                  )
                : getUnSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.arabic,
                  ),
          ),
          InkWell(
            onTap: () {
              //todo: change language to arabic
              languageProvider.changeLanguage(Locale('en'));
            },
            child: languageProvider.appLanguage == 'en'
                ? getSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.english,
                  )
                : getUnSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.english,
                  ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedLanguageWidget({required String language}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language, style: Theme.of(context).textTheme.bodyMedium),
        Icon(Icons.check, size: 35, color: AppColors.mainLightColor),
      ],
    );
  }

  Widget getUnSelectedLanguageWidget({required String language}) {
    return   Text(language, style: Theme.of(context).textTheme.bodyMedium);
  }
}
