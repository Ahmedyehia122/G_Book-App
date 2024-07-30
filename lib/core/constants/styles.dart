import 'package:bookly_app/core/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle20 = TextStyle(
    fontSize: 20.sp,
  );
  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    color: Colors.white.withOpacity(.5),
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle30 = TextStyle(
    color: Colors.white,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    fontFamily: AppFonts.playFairDisplay,
  );
}
