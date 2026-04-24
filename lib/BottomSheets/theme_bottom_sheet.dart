import 'package:flutter/material.dart';
import 'package:momento/Providers/theme_provider.dart';
import 'package:momento/l10n/app_localizations.dart';
import 'package:momento/utils/app_colors.dart';
import 'package:momento/utils/app_styles.dart';
import 'package:momento/utils/screen_utils.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
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
            onTap: () => themeProvider.changeTheme(ThemeMode.dark),
            child: themeProvider.isDarkMode()
                ? getSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.dark,
                  )
                : getUnSelectedLanguageWidget(
                    language: AppLocalizations.of(context)!.dark,
                  ),
          ),
          InkWell(
            onTap: () => themeProvider.changeTheme(ThemeMode.light),
            child: themeProvider.isDark
                ? getUnSelectedLanguageWidget(language: AppLocalizations.of(context)!.light)
                : getSelectedLanguageWidget(language: AppLocalizations.of(context)!.light,)
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

/*
* InkWell(
onTap: ({
//todo: change theme to dark
themeProvider. changeTheme( newTheme: ThemeMode.dark);

child: themeProvider. isDark?
getSelectedLanguageWidget(Language: AppLocalizations. of(context) !. dar
getUnSelectedLanguageWidget(Language: AppLocalizations. of(context) !.
), InkWell
* */
