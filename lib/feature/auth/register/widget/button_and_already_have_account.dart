import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/components/custom_elevted_button.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAndAlreadyHaveAccount extends StatelessWidget {
  const ButtonAndAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomElevatedButton(text: AppStrings.createAccount .tr(), onButtonClicked: (){})
        ,SizedBox(height: 24.h,)
         , Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Text(AppStrings.alreadyHaveAccount.tr()),
            TextButton(onPressed: (){}, child: Text(AppStrings.login.tr() ,style: Theme.of(context).textTheme.headlineMedium,))
          ],)
        ],
      ),
    );
  }
}
