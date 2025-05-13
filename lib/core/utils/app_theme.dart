import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:evently_app_new/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme =ThemeData(
primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor:AppColors.lightScaffoldColor,
    appBarTheme:AppBarTheme(
      color: AppColors.lightScaffoldColor
, titleTextStyle: AppStyles.bold20Black ,
      centerTitle: true,
      scrolledUnderElevation: 0
    ) ,
    textTheme: TextTheme(
      titleLarge: AppStyles.bold20Primary,
      bodyMedium: AppStyles.bold16SecondLight,
      titleMedium: AppStyles.medium20Primary ,
      headlineMedium: AppStyles.bold16Primary

    ) ,

  );
  static ThemeData darkTheme =ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor:AppColors.darkScaffoldColor,
      appBarTheme:AppBarTheme(
          color: AppColors.darkScaffoldColor
,titleTextStyle: AppStyles.bold20Primary   ,
          centerTitle: true,
          scrolledUnderElevation: 0

      ) ,
      textTheme: TextTheme(
          titleLarge: AppStyles.bold20Primary,
          bodyMedium: AppStyles.bold16SecondDark,
          titleMedium: AppStyles.medium20Primary,
          headlineMedium: AppStyles.bold16Primary


      )
  );
}