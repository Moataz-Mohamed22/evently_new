import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles{
  static  TextStyle bold20Primary =GoogleFonts.inter(
    fontWeight: FontWeight.bold ,
    fontSize: 20.sp,
    color: AppColors.primaryColor
  );
  static  TextStyle medium20White =GoogleFonts.inter(
    fontWeight: FontWeight.bold ,
    fontSize: 20.sp,
    color: AppColors.lightScaffoldColor
  );
  static  TextStyle medium20Primary =GoogleFonts.inter(
    fontWeight: FontWeight.w500 ,
    fontSize: 20.sp,
    color: AppColors.primaryColor
  );
  static  TextStyle bold16SecondLight =GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize:16.sp,
    color: AppColors.lightSecondColor
  );
  static  TextStyle bold16SecondDark =GoogleFonts.inter(
    fontWeight: FontWeight.w500 ,
    fontSize: 16.sp,
    color: AppColors.darkSecondColor
  );
}
