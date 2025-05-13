import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:evently_app_new/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  // Bold Styles
  static final TextStyle bold24White = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static final TextStyle bold20Primary = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final TextStyle bold20Black = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final TextStyle bold16SecondLight = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightSecondColor,
  );

  static final TextStyle bold16SecondDark = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkSecondColor,
  );

  static final TextStyle bold16Primary = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final TextStyle bold14Primary = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final TextStyle bold14Black = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  // Medium Styles
  static final TextStyle medium20Primary = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );

  static final TextStyle medium20White = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.lightScaffoldColor,
  );

  static final TextStyle medium16White = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final TextStyle medium16Black = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static final TextStyle medium16Primary = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  static final TextStyle medium16Grey = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.greyColor,
  );

  static final TextStyle medium14White = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // Regular Styles
  static final TextStyle regular14White = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );

  static final TextStyle regular20White = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );
}

