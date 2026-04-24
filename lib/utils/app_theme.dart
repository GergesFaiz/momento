import 'package:flutter/material.dart';
import 'package:momento/utils/app_colors.dart';
import 'package:momento/utils/app_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: AppColors.mainLightColor
),

    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBgColor,
    primaryColor: AppColors.lightGreyColor,

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.mainLightColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainLightColor),
      ),
    ),
    textTheme: TextTheme(labelMedium:  AppStyles.medium16MainColor,
      bodyMedium: AppStyles.semi20Black,
      bodySmall: AppStyles.regular16Grey,
    ),
    disabledColor: AppColors.lightBgColor,
  );

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.mainLightColor
    ),


    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBgColor,
    primaryColor: AppColors.darkBgColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.mainDarkColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkBgColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainDarkColor),
      ),
    ),
    textTheme: TextTheme(labelMedium:  AppStyles.medium16White,
      bodyMedium: AppStyles.semi20White,
      bodySmall: AppStyles.regular16White,
    ),
    disabledColor: AppColors.darkBgColor,
  );
}
