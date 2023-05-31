import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/utils/app_colors.dart';

class Button extends StatelessWidget {
 const Button(
      {this.width,
      this.height,
      this.color = AppColors.whiteColor,
      this.loadingColor = Colors.white,
      this.textColor,
      this.text = '',
      this.loading = false,
      this.enabled = true,
      this.textAlign = TextAlign.left,
      required this.onTap,
      this.padingText,
      this.shadowColor = const Color.fromRGBO(0, 0, 0, 0.3),
      this.radiusBorder = 6,
      this.textMaxLine,
      this.fontWeight,
      this.boxShadow,
      this.prefixTextIcon,
      this.borderColor,
      this.fontSize,
      this.sufixTextIcon,
      this.borderHeight,
      this.overlayColor});

  final double? width;
  final MaterialStateProperty<Color>? overlayColor;
  final double? height, borderHeight;
  final Color color;
  final Color? loadingColor, textColor;
  final Color? borderColor;
  final Color shadowColor;
  final String text;
  final bool loading;
  final FontWeight? fontWeight;
  final bool enabled;
  final double radiusBorder;
  final EdgeInsets? padingText;
  final Function onTap;
  final TextAlign textAlign;
  final int? textMaxLine;
  final List<BoxShadow>? boxShadow;
  final Widget? prefixTextIcon;
  final double? fontSize;
  final Widget? sufixTextIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radiusBorder.r),
        border: Border.all(color: borderColor ?? color, width: borderHeight ?? 1.w),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radiusBorder > 0 ? radiusBorder - 1 : radiusBorder),
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.3),
          overlayColor: overlayColor,
          highlightColor: Colors.transparent,
          borderRadius: BorderRadius.circular(radiusBorder > 0 ? radiusBorder - 1 : radiusBorder),
          onTap: !loading && enabled ? () => onTap() : null,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: padingText,
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (!loading)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (prefixTextIcon != null) prefixTextIcon!,
                                  Text(
                                    text,
                                    textAlign: textAlign,
                                    maxLines: textMaxLine,
                                    style: TextStyle(fontFamily: 'Outfit', color: AppColors.whiteColor, fontWeight: FontWeight.w500, fontSize: 16.sp, height: 1),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (sufixTextIcon != null) sufixTextIcon!
                        ],
                      ),
                    if (loading) SizedBox(height: 20.h, width: 20.w, child: const CircularProgressIndicator(color: AppColors.whiteColor)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
