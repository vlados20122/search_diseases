import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/common/button.dart';
import 'package:search_diseases/common/input_text_field.dart';
import 'package:search_diseases/modules/login/screen/register_screen.dart';
import 'package:search_diseases/resources/app_string.dart';
import 'package:search_diseases/screen/search_diseases_screen.dart';
import 'package:search_diseases/utils/app_colors.dart';
import 'package:search_diseases/utils/custom_text.dart';
import 'package:search_diseases/utils/validator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key, this.fromError = false}) : super(key: key);

  final bool fromError;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late Validator validator;

  bool loading = false;
  bool obscureText = true;
  String? errorEmail;
  String? errorPassword;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    validator = Validator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: SingleChildScrollView(
              child: SizedBox(
                height: isKeyboardVisible ? 0.8.sh : 1.sh,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.w, right: 21.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomText(
                          text: AppStrings.signIn.tr(),
                          fontWeight: FontWeight.w700,
                          fontSize: 36.sp,
                          color: AppColors.primaryBlackBlue),
                      SizedBox(height: 30.h),
                      InputField(
                        controller: emailController,
                        textOnTextField: AppStrings.email.tr(),
                        hintText: 'mail@domain.com',
                        errorText: errorEmail,
                        onChanged: (val) {
                          setState(() {
                            errorEmail = '';
                            errorPassword = '';
                          });
                        },
                        onTap: () {
                          setState(() {
                            errorEmail = '';
                            errorPassword = '';
                          });
                        },
                        textInputType: TextInputType.emailAddress,
                        textCapitalization: TextCapitalization.none,
                      ),
                      SizedBox(height: 10.h),
                      InputField(
                        controller: passwordController,
                        obscureText: obscureText,
                        textOnTextField: AppStrings.password.tr().toLowerCase(),
                        errorText: errorPassword,
                        textInputAction: TextInputAction.done,
                        textCapitalization: TextCapitalization.none,
                        onChanged: (val) {
                          setState(() {
                            errorEmail = '';
                            errorPassword = '';
                          });
                        },
                        onTap: () {
                          setState(() {
                            errorEmail = '';
                            errorPassword = '';
                          });
                        },
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText ? obscureText = false : obscureText = true;
                            });
                          },
                          child: CustomText(
                            text: obscureText ? AppStrings.show.tr().toUpperCase() : AppStrings.hide.tr().toUpperCase(),
                            color: AppColors.backgroundColorForAppBar,
                            height: 1.4,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                              setState(() {
                                errorEmail = '';
                                errorPassword = '';
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
                              child: CustomText(
                                text: AppStrings.forgotYourPassword.tr(),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.colorForgotPasswordText,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35.h),
                      Padding(
                        padding: EdgeInsets.only(right: 1.w),
                        child: Button(
                          height: 50.h,
                          onTap: () {
                            login();
                          },
                          loading: loading,
                          color: AppColors.blackColor,
                          padingText: EdgeInsets.symmetric(vertical: 15.h),
                          text: AppStrings.logIn.tr().toUpperCase(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    setState(() {
      loading = true;
    });
    final email = emailController.text.trim();
    final password = passwordController.text;

    final emailErrorText = _validateEmail(email);
    final passwordErrorText = _validatePassword(password);

    if (emailErrorText != null || passwordErrorText != null) {
      setState(() {
        errorEmail = emailErrorText ?? '';
        errorPassword = passwordErrorText ?? '';
      });
      setState(() {
        loading = false;
      });
      return;
    }
    try {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SearchDiseasesScreen(),
        ),
      );
      setState(() {
        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
      });
    }
  }

  String? _validateEmail(String email) {
    return validator.checkEmailError(email);
  }

  String? _validatePassword(String password) {
    return validator.checkPasswordError(
      isRuleSpecialChars: false,
      isRuleLowerChars: false,
      isRuleUpperChars: false,
      isRuleNumbers: false,
      password: password,
    );
  }
}
