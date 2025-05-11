import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/feature/onboarding/widget/language_and_toggle.dart';
import 'package:evently_app_new/feature/onboarding/widget/theme_and_toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/custom_elevted_button.dart';

class  FirstScreen extends StatelessWidget {
  const  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity.w,
        title: SafeArea(child: Center(child: Image.asset(AppAssets.logoApp ,width: 159.w, height: 50.h,))),
        
      ),
      body: Padding(
        padding:  EdgeInsets.only(
          top: 40.h,
          left: 16.w,
          right: 16.w
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.imageOnboardingFirst),
              SizedBox(height:  26.h),
              Text(AppStrings.personalizeYourExperience.tr() ,style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height:  28.h),
              Text(AppStrings.desFirstOnboarding.tr() ,style:  Theme.of(context).textTheme.bodyMedium,)
              ,SizedBox(height:  28.h),
              LanguageAndToggle(),
            SizedBox(height:  18.h),
                ThemeAndToggle(),
              SizedBox(height:  18.h),

              CustomElevatedButton(onButtonClicked: (){},text: AppStrings.letsStart.tr(), )
          
            ],
          ),
        ),
      ),
    );
  }
}
