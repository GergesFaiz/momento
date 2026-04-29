import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:momento/onboarding_screen.dart';
import 'package:momento/Providers/language_provider.dart';
import 'package:momento/Providers/theme_provider.dart';
import 'package:momento/home/home_screen.dart';
import 'package:momento/l10n/app_localizations.dart';
import 'package:momento/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: languageProvider.appLanguage,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,

      initialRoute: OnBoardingScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
      },
    );
  }
}
