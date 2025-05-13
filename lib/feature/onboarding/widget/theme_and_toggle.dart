import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../../../core/providers/theme_provider.dart';

class ThemeAndToggle extends StatefulWidget {
  const ThemeAndToggle({super.key});

  @override
  State<ThemeAndToggle> createState() => _ThemeAndToggleState();
}

class _ThemeAndToggleState extends State<ThemeAndToggle> {
  late String selectedMode;

  @override
  void initState() {
    super.initState();
    final currentTheme = Provider.of<ThemeProvider>(context, listen: false).themeMode;
    selectedMode = currentTheme == ThemeMode.dark ? 'dark' : 'light';
  }

  void changeTheme(String mode) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    setState(() {
      selectedMode = mode;
    });

    if (mode == 'dark') {
      themeProvider.changeTheme(ThemeMode.dark);
    } else {
      themeProvider.changeTheme(ThemeMode.light);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.theme.tr(),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Container(
          width: 70.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(
              width: 2,
              color: AppColors.primaryColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => changeTheme('light'),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: selectedMode == 'light'
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  child: Image.asset(
                    AppAssets.sunIcon,
                    color: AppColors.darkScaffoldColor,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              GestureDetector(
                onTap: () => changeTheme('dark'),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: selectedMode == 'dark'
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  child: Image.asset(
                    AppAssets.moonIcon,
                    color: AppColors.darkScaffoldColor,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

