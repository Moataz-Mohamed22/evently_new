import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageAndToggle extends StatefulWidget {
  const LanguageAndToggle({super.key});

  @override
  State<LanguageAndToggle> createState() => _LanguageAndToggleState();
}

class _LanguageAndToggleState extends State<LanguageAndToggle> {
  String selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.language.tr(),
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
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = 'en';
                    context.setLocale(Locale('en'));

                  });
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: selectedLanguage == 'en'
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  child: Image.asset(
                    AppAssets.usaIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = 'ar';
                    context.setLocale(Locale('ar'));
                  });
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: selectedLanguage == 'ar'
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  child: Image.asset(
                    AppAssets.egIcon,
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
