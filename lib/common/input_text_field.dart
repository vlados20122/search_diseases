import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/utils/app_colors.dart';
import 'package:search_diseases/utils/custom_text.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    this.textInputColor,
    this.kmTextField = false,
    this.showErrorText = true,
    this.labelText,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.obscureText = false,
    this.autofocus = false,
    this.textInputType,
    this.textAlign,
    this.inputTextStyle,
    this.hintTextStyle,
    this.enableInteractiveSelection = true,
    this.readOnly = false,
    this.focusNode,
    this.textCapitalization,
    this.maxLength,
    this.inputFormatters,
    this.onTap,
    this.contentPadding,
    this.isDense = false,
    this.suffixText,
    this.prefixText,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.onEditingComplete,
    this.fillColor,
    this.scrollController,
    this.errorTextStyle,
    this.textLabelColor,
    this.floatingLabelBehavior,
    this.labelTextStyle,
    this.onSubmitted,
    this.suffixOnTap,
    this.style,
    this.suffixOnTapIcon,
    this.prefixPadding,
    required this.textOnTextField,
  });

  final TextEditingController controller;
  final String? labelText;
  final Color? textInputColor;
  final EdgeInsetsGeometry? prefixPadding;
  final Color? textLabelColor;
  final Function(String value)? onChanged;
  final bool showErrorText;
  final String? errorText;
  final String? hintText;
  final bool obscureText;
  final bool autofocus;
  final bool kmTextField;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final TextStyle? style;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle, errorTextStyle;
  final bool enableInteractiveSelection;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final bool isDense;
  final String? suffixText;
  final String? prefixText;
  final TextStyle? labelTextStyle;
  final Widget? prefixIcon, suffixIcon, suffixOnTapIcon;
  final Function()? onEditingComplete;
  final Function()? onSubmitted;
  final Color? fillColor;
  final ScrollController? scrollController;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final VoidCallback? suffixOnTap;
  final String textOnTextField;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isFilled = false;

  @override
  void initState() {
    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          isFilled = widget.controller.text.isNotEmpty;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: widget.textOnTextField.toLowerCase(),
                color: AppColors.colorForTextOnTextField,
                fontSize: 13.sp,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      text: widget.errorText?.toLowerCase() ?? '',
                      color: widget.errorText != null && widget.errorText != null ? AppColors.kRedColor : AppColors.colorForTextOnTextField,
                      fontSize: 13.sp,
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        TextField(
          style: widget.style ??
              TextStyle(
                  fontFamily: 'Outfit',
                  color: widget.errorText != null && widget.errorText != '' ? AppColors.colorErrorBorder : AppColors.backgroundColorForAppBar,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400),
          scrollController: widget.scrollController,
          onEditingComplete: widget.onEditingComplete,
          controller: widget.controller,
          focusNode: widget.focusNode,
          scrollPadding: EdgeInsets.symmetric(vertical: 10.h),
          onChanged: (String value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          autofocus: false,
          obscureText: widget.obscureText,
          textAlign: widget.textAlign ?? TextAlign.start,
          obscuringCharacter: "*",
          cursorColor: AppColors.blackColor,
          cursorWidth: 1.w,
          cursorHeight: Platform.isIOS ? 18.h : 20.h,
          keyboardType: widget.textInputType,
          textCapitalization: widget.textCapitalization ?? TextCapitalization.words,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          readOnly: widget.readOnly,
          maxLength: widget.maxLength,
          inputFormatters: widget.inputFormatters,
          onTap: widget.onTap,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          decoration: InputDecoration(
            counter: const SizedBox(),
            prefixText: widget.prefixText,
            suffixText: widget.suffixText,
            prefixIcon: widget.prefixIcon == null
                ? null
                : Padding(
              padding: widget.prefixPadding ?? EdgeInsets.only(left: 19.w, right: 14.w),
              child: widget.prefixIcon,
            ),
            suffixIcon: widget.suffixIcon != null
                ? Container(
              padding: EdgeInsets.only(right: 15.w, top: 12.h, bottom: 12.h),
              child: widget.suffixIcon,
            )
                : widget.suffixOnTapIcon != null && widget.suffixOnTap != null
                ? Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: IconButton(
                onPressed: widget.suffixOnTap,
                icon: widget.suffixOnTapIcon!,
              ),
            )
                : null,
            prefixStyle: TextStyle(fontFamily: 'Montserrat', fontSize: 16.sp, color: AppColors.blackColor),
            suffixStyle: TextStyle(fontFamily: 'Montserrat', fontSize: 16.sp, color: AppColors.blackColor),
            contentPadding: widget.contentPadding ??
                EdgeInsets.only(
                  left: 17.3.w,
                  right: 15.w,
                  top: widget.obscureText ? 20.h : 20.h,
                ),
            isDense: widget.isDense,
            labelText: widget.labelText?.toLowerCase(),
            errorStyle: TextStyle(fontFamily: 'Outfit', fontSize: 12.sp, color: AppColors.kRedColor, overflow: TextOverflow.ellipsis),
            errorMaxLines: 1,
            hintText: widget.hintText,
            hintStyle: widget.hintTextStyle ??
                TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: widget.errorText != null && widget.errorText != '' ? AppColors.colorErrorBorder : AppColors.colorForHintText),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: widget.labelTextStyle ?? const TextStyle(),
            fillColor: widget.fillColor ?? AppColors.kWhiteBackColor,
            filled: true,
            disabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.kmTextField
                    ? AppColors.backgroundColorForAppBar
                    : widget.errorText != null && widget.errorText != ''
                    ? AppColors.colorErrorBorder
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            border: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.kmTextField
                    ? AppColors.backgroundColorForAppBar
                    : widget.errorText != null && widget.errorText != ''
                    ? AppColors.colorErrorBorder
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.kmTextField
                    ? AppColors.backgroundColorForAppBar
                    : widget.errorText != null && widget.errorText != ''
                    ? AppColors.colorErrorBorder
                    : AppColors.focusColorBorder,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.kmTextField
                    ? AppColors.backgroundColorForAppBar
                    : widget.errorText != null && widget.errorText != ''
                    ? AppColors.colorErrorBorder
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            errorBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.errorText != null && widget.errorText != '' ? AppColors.colorErrorBorder : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(
                width: widget.kmTextField ? 1.w : 2.w,
                color: widget.errorText != null && widget.errorText != '' ? AppColors.colorErrorBorder : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
      ],
    );
  }
}
