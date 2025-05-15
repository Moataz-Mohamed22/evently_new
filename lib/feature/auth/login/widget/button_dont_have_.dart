import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/config/routes.dart';
import 'package:evently_app_new/core/components/custom_elevted_button.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonDontHave extends StatelessWidget {
  const ButtonDontHave({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 16.w
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomElevatedButton(text: AppStrings.login .tr(), onButtonClicked: (){})
        ,SizedBox(height: 20.h,)
         , Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            Text(AppStrings.dontHaveAnAccount.tr()),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, Routes.register);
            }, child: Text(AppStrings.createAccount.tr() ,style: Theme.of(context).textTheme.headlineMedium,))
          ],)
        ],
      ),
    );
  }
}
