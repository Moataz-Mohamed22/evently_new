import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  Color? borderColor;
  String hintText;
  String? labelText;
  TextStyle? labelStyle;
  TextStyle? hintStyle;
  TextStyle? style;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  int? maxLines;
  TextInputType? keyboardType;
  String? Function(String?)? validator;
  TextEditingController? controller;

  CustomTextFiled({
    this.borderColor,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.validator,
    required this.hintText,
    this.labelText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.labelStyle,
    this.style,
    this.obscureText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.r),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        maxLines: maxLines ?? 1,
        obscureText: obscureText ?? false,
        style: style ?? AppStyles.bold14Black.copyWith(fontSize: 14.sp),
        cursorColor: AppColors.lightSecondColor,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.all(12.w),            child: suffixIcon,
          ),
          prefixIcon: prefixIcon ,
          hintText: hintText,
          hintStyle: hintStyle ?? AppStyles.medium16Grey.copyWith(fontSize: 16.sp),
          labelText: labelText,
          labelStyle: labelStyle ?? TextStyle(fontSize: 14.sp),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.grey,
              width: 2.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.grey,
              width: 2.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: AppColors.redColor,
              width: 2.w,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: AppColors.redColor,
              width: 2.w,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        ),
      ),
    );
  }
}

