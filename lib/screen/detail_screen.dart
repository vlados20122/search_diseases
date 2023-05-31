import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/repository/articles.dart';
import 'package:search_diseases/utils/app_colors.dart';
import 'package:search_diseases/utils/custom_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.disease}) : super(key: key);

  final Articles disease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250.h,
                  width: 1.sw,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.2), blurRadius: 20.r)],
                  ),
                  child: Image.network(
                    disease.attributes?.wallpaper?.data?.attributes?.url ?? "",
                    width: 1.sw,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 20.w),
                  child: Container(
                    width: 30.sp,
                    height: 30.sp,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor.withOpacity(0.5),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: const Center(child: Icon(Icons.arrow_back_ios)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
              child: CustomText(
                text: '${disease.attributes?.title}',
                fontSize: 20.sp,
                textAlign: TextAlign.start,
                height: 1.3,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor,
              ),
            ),
            disease.attributes?.symptoms == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Symptoms: ${disease.attributes?.symptoms}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.intro == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Intro: ${disease.attributes?.intro}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.cause == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Cause: ${disease.attributes?.cause}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.frequency == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Frequency: ${disease.attributes?.frequency}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.progress == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Progress: ${disease.attributes?.progress}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.consequences == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Consequences: ${disease.attributes?.consequences}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.frequency == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Frequency: ${disease.attributes?.frequency}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.diagnosis == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Diagnosis: ${disease.attributes?.diagnosis}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
            disease.attributes?.treatment == null
                ? const SizedBox()
                : Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h, right: 30.w),
                    child: CustomText(
                      text: 'Treatment: ${disease.attributes?.treatment}',
                      fontSize: 18.sp,
                      textAlign: TextAlign.start,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
