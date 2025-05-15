import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/components/custom_elevted_button.dart';
import 'package:evently_app_new/core/components/custom_text_filed.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_styles.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: 16.h ,
        horizontal: 16.w
      ),
      child: Column(
        children: [


          CustomElevatedButton( prefixIconButton: SvgPicture.asset(AppAssets.googleIcon),text: AppStrings.loginWithGoogle.tr()  , onButtonClicked: (){},
            backgroundColor: AppColors.lightScaffoldColor, textStyle: Theme.of(context).textTheme.titleLarge,) ,
          SizedBox(height: 24.h,),

        ],
      ),

    );
  }
}
