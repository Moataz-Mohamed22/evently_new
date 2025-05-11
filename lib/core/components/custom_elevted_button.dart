import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_styles.dart';


class CustomElevatedButton extends StatelessWidget {
  Color? backgroundColor;
  Widget? prefixIconButton;
  String text;
  TextStyle? textStyle;
  Function onButtonClicked;
  CustomElevatedButton(
      {this.backgroundColor,
        this.prefixIconButton,
        required this.text,
        this.textStyle,
        required this.onButtonClicked});
  @override
  Widget build(BuildContext context) {


    return ElevatedButton(

        style: ElevatedButton.styleFrom(
            minimumSize: Size(361.w, 56.h),
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
                side: BorderSide(color: AppColors.primaryColor, width: 2.w))),
        onPressed: () {
          onButtonClicked();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIconButton ?? SizedBox(),
            SizedBox(
              width:5.w,
            ),
            Text(
              text,
              style: textStyle ?? AppStyles.medium20White,
            )
          ],
        ));
  }
}

