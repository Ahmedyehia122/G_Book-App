import 'package:bookly_app/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonName,
      this.onPressed,
      this.backGroundColor,
      this.borderRadius,
      this.textColor,
      this.fontSize});
  final String buttonName;
  final void Function()? onPressed;
  final Color? backGroundColor;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          onPressed: () {},
          child: Text(
            buttonName,
            style: AppStyles.textStyle16.copyWith(
              color: textColor,
              // fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          )),
    );
  }
}
