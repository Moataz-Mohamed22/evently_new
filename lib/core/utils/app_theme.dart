import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:evently_app_new/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme =ThemeData(
primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor:AppColors.lightScaffoldColor,
    textTheme: TextTheme(
      titleLarge: AppStyles.bold20Primary,
      bodyMedium: AppStyles.bold16SecondLight,
      titleMedium: AppStyles.medium20Primary
    )
  );
  static ThemeData darkTheme =ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor:AppColors.darkScaffoldColor,
      textTheme: TextTheme(
          titleLarge: AppStyles.bold20Primary,
          bodyMedium: AppStyles.bold16SecondDark,
          titleMedium: AppStyles.medium20Primary

      )
  );
}