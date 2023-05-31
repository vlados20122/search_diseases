import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
  final int maxLines;
  final double height;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final bool isErrorText;
  final TextOverflow? textOverflow;
  final String? fontFamily;

  const CustomText({
    Key? key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.height = 1,
    this.maxLines = 10,
    this.decoration,
    this.textAlign,
    this.isErrorText = false,
    this.textOverflow,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? 'Outfit',
        fontSize: fontSize ?? (isErrorText ? 14.sp : 16.sp),
        color: color ?? (isErrorText ? AppColors.kRedColor : AppColors.blackColor),
        fontWeight: fontWeight ?? FontWeight.w400,
        decoration: decoration,
        height: height,
      ),
      maxLines: isErrorText ? 2 : maxLines,
      textAlign: textAlign ?? TextAlign.center,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }
}
