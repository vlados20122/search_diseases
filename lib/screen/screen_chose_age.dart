import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/utils/app_colors.dart';
import 'package:search_diseases/utils/custom_text.dart';

class ChoseAgeScreen extends StatelessWidget {
  const ChoseAgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 1.sw,
            height: 100.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 10.r)]
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: (){},
                child: Center(
                  child: CustomText(
                    text: '0  -  6  years',
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            width: 1.sw,
            height: 100.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 10.r)]
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: (){},
                child: Center(
                  child: CustomText(
                    text: '7  -  12  years',
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            width: 1.sw,
            height: 100.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 10.r)]
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: (){},
                child: Center(
                  child: CustomText(
                    text: '13  -  50  years',
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            width: 1.sw,
            height: 100.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 10.r)]
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: (){},
                child: Center(
                  child: CustomText(
                    text: '51  -  90  years',
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
