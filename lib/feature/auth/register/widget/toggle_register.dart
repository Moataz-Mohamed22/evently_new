import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class ToggleRegister extends StatefulWidget {
  const ToggleRegister({super.key});

  @override
  State<ToggleRegister> createState() => _ToggleRegisterState();
}
String selectedLanguage = 'en';


class _ToggleRegisterState extends State<ToggleRegister> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 73.28.w,
      height: 30.76.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(
          width: 2.w,
          color: AppColors.primaryColor,
        ),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                context.setLocale(Locale('en'));

              });
            },
            child: CircleAvatar(
              radius: 15.r,
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
              radius: 15.r,
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

    );
  }
}
