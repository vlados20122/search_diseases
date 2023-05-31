import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/common/input_text_field.dart';
import 'package:search_diseases/cubit/search_diseases_cubit.dart';
import 'package:search_diseases/resources/app_string.dart';
import 'package:search_diseases/screen/detail_screen.dart';
import 'package:search_diseases/utils/app_colors.dart';
import 'package:search_diseases/utils/custom_text.dart';

class SearchDiseasesScreen extends StatelessWidget {
  const SearchDiseasesScreen({Key? key}) : super(key: key);

  SearchDiseasesCubit get cubit => Modular.get<SearchDiseasesCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchDiseasesCubit, SearchDiseasesState>(
      bloc: cubit,
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 25.w, top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Search diseases',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                    SizedBox(
                      width: 30.sp,
                      height: 30.sp,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.security),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 25.w, top: 15.h),
                child: InputField(
                  controller: cubit.passwordController,
                  textOnTextField: AppStrings.search.tr().toLowerCase(),
                  textInputAction: TextInputAction.done,
                  textCapitalization: TextCapitalization.none,
                  onChanged: (val) {
                    if(val.isNotEmpty) {
                      cubit.searchAllDiseases(val);
                    }else{
                      cubit.searchDiseases = [];
                      cubit.emiInitialState();
                    }
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 30.h),
                  itemCount: cubit.searchDiseases.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 25.w, bottom: 25.h),
                      child: Container(
                        height: 250.h,
                        width: 1.sw,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(25.r),
                          boxShadow: [BoxShadow(color: AppColors.blackColor.withOpacity(0.1), blurRadius: 10.r)],
                        ),
                        child: Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(disease: cubit.searchDiseases[index]),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(25.r), topLeft: Radius.circular(25.r)),
                                    ),
                                    child: Image.network(
                                      cubit.searchDiseases[index].attributes?.wallpaper?.data?.attributes?.url ?? '',
                                      width: 1.sw,
                                      alignment: Alignment.topCenter,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: CustomText(
                                    text: cubit.searchDiseases[index].attributes?.title ?? '',
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
                                  child: CustomText(
                                    text: cubit.searchDiseases[index].attributes?.symptoms ?? '',
                                    color: AppColors.greyColor,
                                    height: 1.2,
                                    textAlign: TextAlign.start,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
