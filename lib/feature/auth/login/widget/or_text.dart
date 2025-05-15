import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_Strings.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class OrText extends StatelessWidget {
  const OrText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            endIndent: 20,
            indent: 10,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          AppStrings.or.tr(),
          style: AppStyles.bold20Primary,
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: AppColors.primaryColor,
            endIndent: 20,
            indent: 10,
          ),
        ),
      ],
    ) ;
  }
}
