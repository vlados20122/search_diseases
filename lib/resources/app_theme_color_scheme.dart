import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

abstract class AppThemeColorScheme extends ColorScheme {
  // ignore: library_private_types_in_public_api
  static _LightColorScheme light = _LightColorScheme();

  // ignore: library_private_types_in_public_api
  static _DarkColorScheme dark = _DarkColorScheme();

  final Color blue;
  final Color white;
  final Color black;
  final Color grey;
  final Color red;
  final Color circleWeiterColor;
  final Color greyForText;
  final Color errorColor;
  final Color primaryRed;
  final Color primaryTeal;
  final Color primaryGold;
  final Color colorForAlphabetContainer;
  final Color primaryGreen;
  final Color primaryBlackBlue;
  final Color primaryLight;
  final Color primaryYellow;
  final Color textFieldBorderColor;
  final Color backgroundColor;
  final Color bottomBarColor, bottomBarShadowColor;
  final Color menuDoctorButtonColor, menuMyDataColor, menuRecommendAppColor, menuFeedbackColor, menuManageSubscriptionColor, menuDocumentColor;
  final Color menuButtonColor;
  final Color primaryGrey;
  final Color quoteLightBlue;
  final Color blackForText;
  final Color uberVictorDescriptionColor;
  final Color uberVictorBlueTextColor;
  final Color uberVictorSecondContainerBack;
  final Color primaryGray;
  final Color articleDescriptionTextColor;
  final Color backColorLoadingContainer;
  final Color darkBlue;
  final Color gradientColorForDetailText;
  final Color textColorForDetailText;
  final Color descriptionColorDetailText;
  final Color greyColorDetailText;
  final Color firstColorForAnimatedContainerSickness;
  final Color colorForContainerLeftBorder;
  final Color colorForBoldTextSicknessScreen;
  final Color colorForOpenContainerSickness;
  final Color colorForBorderOpenContainerSickness;
  final Color colorForContainerDataQuestionTime;
  final Color colorForBackSwiper;
  final Color colorForCaption;
  final Color colorForContainerPayment;
  final Color fillColorDiseases;
  final Color colorForShadowContainerPayment;
  final Color colorBackgroundRegisterScreen;

  @override
  // ignore: overridden_fields
  final Brightness brightness;

  const AppThemeColorScheme({
    required this.fillColorDiseases,
    required this.brightness,
    required this.blue,
    required this.white,
    required this.black,
    required this.grey,
    required this.primaryGreen,
    required this.primaryGold,
    required this.primaryRed,
    required this.primaryLight,
    required this.primaryTeal,
    required this.primaryYellow,
    required this.red,
    required this.circleWeiterColor,
    required this.greyForText,
    required this.bottomBarColor,
    required this.bottomBarShadowColor,
    required this.backgroundColor,
    required this.menuDoctorButtonColor,
    required this.menuMyDataColor,
    required this.menuFeedbackColor,
    required this.menuManageSubscriptionColor,
    required this.menuRecommendAppColor,
    required this.menuDocumentColor,
    required this.errorColor,
    required this.textFieldBorderColor,
    required this.menuButtonColor,
    required this.blackForText,
    required this.primaryBlackBlue,
    required this.primaryGrey,
    required this.quoteLightBlue,
    required this.uberVictorDescriptionColor,
    required this.uberVictorBlueTextColor,
    required this.uberVictorSecondContainerBack,
    required this.primaryGray,
    required this.articleDescriptionTextColor,
    required this.backColorLoadingContainer,
    required this.darkBlue,
    required this.gradientColorForDetailText,
    required this.textColorForDetailText,
    required this.descriptionColorDetailText,
    required this.greyColorDetailText,
    required this.firstColorForAnimatedContainerSickness,
    required this.colorForContainerLeftBorder,
    required this.colorForBoldTextSicknessScreen,
    required this.colorForOpenContainerSickness,
    required this.colorForBorderOpenContainerSickness,
    required this.colorForContainerDataQuestionTime,
    required this.colorForBackSwiper,
    required this.colorForCaption,
    required this.colorForContainerPayment,
    required this.colorForShadowContainerPayment,
    required this.colorBackgroundRegisterScreen,
    required this.colorForAlphabetContainer,
  }) : super(
    brightness: brightness,
    primary: blue,
    // ignore: deprecated_member_use
    primaryVariant: Colors.black,
    secondary: Colors.black,
    // ignore: deprecated_member_use
    secondaryVariant: Colors.black,
    surface: Colors.black,
    background: Colors.black,
    error: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: black,
    onError: Colors.black,
  );
}

class _DarkColorScheme extends AppThemeColorScheme {
  _DarkColorScheme()
      : super(
    brightness: Brightness.dark,
    blue: HexColor('#00FFFF'),
    white: HexColor('#ffffff'),
    black: HexColor('#000000'),
    grey: HexColor('#999999'),
    red: HexColor('#1E1E1E'),
    circleWeiterColor: HexColor('#DA716F'),
    greyForText: HexColor('#B5B5B5'),
    bottomBarColor: HexColor('#F5F9FF'),
    bottomBarShadowColor: HexColor('#3896EF').withOpacity(0.2),
    backgroundColor: HexColor('#FCFCFC'),
    menuDoctorButtonColor: HexColor('#FDF6E1'),
    menuMyDataColor: HexColor('#F2ECFF'),
    menuRecommendAppColor: HexColor('#FEF0FE'),
    menuFeedbackColor: HexColor('#C3E0FF'),
    menuManageSubscriptionColor: HexColor('#F5F0E5'),
    menuDocumentColor: HexColor('#F5F0E5'),
    errorColor: HexColor('#DA716F'),
    textFieldBorderColor: HexColor('#C6C6C6'),
    menuButtonColor: HexColor('#76B5B7'),
    blackForText: HexColor('#141414'),
    primaryBlackBlue: HexColor('#24253B'),
    primaryGold: HexColor('#EDC750'),
    primaryYellow: HexColor('#EEE360'),
    primaryTeal: HexColor('#76B5B7'),
    primaryRed: HexColor('#DA716F'),
    primaryLight: HexColor('#FDF6E1'),
    primaryGreen: HexColor('#A7CB3F'),
    primaryGrey: HexColor('#9A9A9A'),
    quoteLightBlue: HexColor('#B6CAFF'),
    uberVictorDescriptionColor: HexColor('#303030'),
    uberVictorBlueTextColor: HexColor('#1C274C'),
    uberVictorSecondContainerBack: HexColor('#F3F3F8'),
    primaryGray: HexColor('#ADADAD'),
    articleDescriptionTextColor: HexColor('#454545'),
    backColorLoadingContainer: HexColor('#F2F4F7'),
    darkBlue: HexColor('#1C274D'),
    gradientColorForDetailText: HexColor('#D9D9D9'),
    textColorForDetailText: HexColor('#A6A6A6'),
    descriptionColorDetailText: HexColor('#212121'),
    greyColorDetailText: HexColor('#888888'),
    firstColorForAnimatedContainerSickness: HexColor('#FAFAFE'),
    colorForContainerLeftBorder: HexColor('#B7B5FA'),
    colorForBoldTextSicknessScreen: HexColor('#2E2E2E'),
    colorForOpenContainerSickness: HexColor('#FEF0F2'),
    colorForBorderOpenContainerSickness: HexColor('#FCB5C2'),
    colorForContainerDataQuestionTime: HexColor('#F2F2F2'),
    colorForBackSwiper: HexColor('#1F1F1F'),
    colorForCaption: HexColor('#656565'),
    colorForContainerPayment: HexColor('#EEF6FF'),
    colorForShadowContainerPayment: HexColor('#00685E'),
    colorBackgroundRegisterScreen: HexColor('#75B3B6'),
    fillColorDiseases: HexColor('#F3F3F3'),
    colorForAlphabetContainer: HexColor('#747474'),
  );
}

class _LightColorScheme extends AppThemeColorScheme {
  _LightColorScheme()
      : super(
    brightness: Brightness.light,
    blue: HexColor('#00FFFF'),
    white: HexColor('#ffffff'),
    black: HexColor('#000000'),
    grey: HexColor('#999999'),
    red: HexColor('#1E1E1E'),
    circleWeiterColor: HexColor('#DA716F'),
    greyForText: HexColor('#B5B5B5'),
    bottomBarColor: HexColor('#F5F9FF'),
    bottomBarShadowColor: HexColor('#3896EF').withOpacity(0.2),
    backgroundColor: HexColor('#FCFCFC'),
    menuDoctorButtonColor: HexColor('#FDF6E1'),
    menuMyDataColor: HexColor('#F2ECFF'),
    menuRecommendAppColor: HexColor('#FEF0FE'),
    menuFeedbackColor: HexColor('#C3E0FF'),
    menuManageSubscriptionColor: HexColor('#F5F0E5'),
    menuDocumentColor: HexColor('#F5F0E5'),
    errorColor: HexColor('#DA716F'),
    textFieldBorderColor: HexColor('#C6C6C6'),
    menuButtonColor: HexColor('#76B5B7'),
    blackForText: HexColor('#141414'),
    primaryBlackBlue: HexColor('#24253B'),
    primaryGold: HexColor('#EDC750'),
    primaryYellow: HexColor('#EEE360'),
    primaryTeal: HexColor('#76B5B7'),
    primaryRed: HexColor('#DA716F'),
    primaryLight: HexColor('#FDF6E1'),
    primaryGreen: HexColor('#A7CB3F'),
    primaryGrey: HexColor('#9A9A9A'),
    quoteLightBlue: HexColor('#B6CAFF'),
    uberVictorDescriptionColor: HexColor('#303030'),
    uberVictorBlueTextColor: HexColor('#1C274C'),
    uberVictorSecondContainerBack: HexColor('#F3F3F8'),
    primaryGray: HexColor('#ADADAD'),
    articleDescriptionTextColor: HexColor('#454545'),
    backColorLoadingContainer: HexColor('#F2F4F7'),
    darkBlue: HexColor('#1C274D'),
    gradientColorForDetailText: HexColor('#D9D9D9'),
    textColorForDetailText: HexColor('#A6A6A6'),
    descriptionColorDetailText: HexColor('#212121'),
    greyColorDetailText: HexColor('#888888'),
    firstColorForAnimatedContainerSickness: HexColor('#FAFAFE'),
    colorForContainerLeftBorder: HexColor('#B7B5FA'),
    colorForBoldTextSicknessScreen: HexColor('#2E2E2E'),
    colorForOpenContainerSickness: HexColor('#FEF0F2'),
    colorForBorderOpenContainerSickness: HexColor('#FCB5C2'),
    colorForContainerDataQuestionTime: HexColor('#F2F2F2'),
    colorForBackSwiper: HexColor('#1F1F1F'),
    colorForCaption: HexColor('#656565'),
    colorForContainerPayment: HexColor('#EEF6FF'),
    colorForShadowContainerPayment: HexColor('#00685E'),
    colorBackgroundRegisterScreen: HexColor('#75B3B6'),
    fillColorDiseases: HexColor('#F3F3F3'),
    colorForAlphabetContainer: HexColor('#747474'),
  );
}
