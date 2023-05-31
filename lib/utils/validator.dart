import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:search_diseases/resources/app_string.dart';
import 'package:string_validator/string_validator.dart';

class Validator {
  static final Validator _instance = Validator._privateConstructor();

  Validator._privateConstructor();

  factory Validator() {
    return _instance;
  }

  static final RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static final RegExp numberAndLettersRegExp = RegExp('[A-Z0-9]');

  static final RegExp nameRegExp = RegExp(
    "[A-Za-z]",
  );

  static final RegExp nickNameRegExp = RegExp(
    "[A-Za-z0-9!@\$#%&'*+-/=?^_`(){|}~:;\"]",
  );

  /// 1. Amount can start with 'zero' if it's decimal
  /// 2. If it starts with 'zero' there is only one zero character is possible to input
  /// 3. Amount can't start with 'zero' in any other other cases
  /// 4. Amount integer part isn't restricted with length
  /// 5. Decimal separators can be entered are '.' and ','
  /// 6. Decimal part consists of maximum 2 characters
  static bool matchAmountPattern(String amount, {int decimalPartLength = 2}) {
    return RegExp(r'^(([1-9]{1}[0-9]*)|0{1})([.,][0-9]{0,' + decimalPartLength.toString() + r'})?$').hasMatch(amount);
  }

  static bool matchAmount(String amount) {
    return RegExp(r'^\d{0,18}(?:\.\d{0,2})?$').hasMatch(amount);
  }

  bool hasSpecialChars(String password) {
    return RegExp("['!#\$%&\"()*+,-./:;<=>?@\\[\\]^_{|}~\\\\]").hasMatch(password);
  }

  String? hasNotNumbers(String password) {
    if (RegExp(r'[a-z]').hasMatch(password) || RegExp("['!#\$%&\"()*+,-./:;<=>?@\\[\\]^_{|}~\\\\]").hasMatch(password)) {
      return 'You must enter only numbers';
    } else if (password.isEmpty) {
      return AppStrings.fieldIsEmpty.tr();
    } else {
      return null;
    }
  }

  ///return true if text has lowercase chars
  bool hasLowerCaseChars(String password) {
    return RegExp(r'[a-z]').hasMatch(password);
  }

  ///return true if text has uppercase chars
  bool hasUpperCaseChars(String password) {
    return RegExp(r'[A-Z]').hasMatch(password);
  }

  bool hasNumbers(String password) {
    return RegExp(r'[0-9]').hasMatch(password);
  }

  bool hasSpecialCharsWithoutHyphens(String title) {
    return RegExp("['!#\$%&\"()*+,./:;<=>?@\\[\\]^_{|}~\\\\]").hasMatch(title);
  }

  String? searchValidator(String? inputUserText) {
    String? errorText;
    if (inputUserText == null || inputUserText.isEmpty || inputUserText.length == 1) {
      // errorText = AppStrings.pleaseEnterAtLeastTwoCharacters.tr();
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkEmailError(String? email) {
    String? errorText;
    if (email == null || email.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (email.contains('@') == false) {
      errorText = AppStrings.wrongTypeOfEmail.tr();
    } else if (email.length > 100) {
      errorText = AppStrings.isNotValidEmailAddress.tr();
    } else if (email.isNotEmpty) {
      bool isValid = isEmail(email);
      if (isValid == false) {
        errorText = AppStrings.isNotValidEmailAddress.tr();
      }
    }
    return errorText;
  }

  String? checkPasswordError({
    required String password,
    bool isRuleLength = true,
    bool isRuleSpecialChars = false,
    bool isRuleLowerChars = true,
    bool isRuleUpperChars = true,
    bool isRuleNumbers = true,
    bool isRuleChars = false,
  }) {
    String? errorText;
    if (password.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (isRuleLength && password.length < 6 || password.length > 50) {
      errorText = AppStrings.tooShortPassword.tr();
    } else if (isRuleSpecialChars && !hasSpecialChars(password)) {
      errorText = AppStrings.passwordMustContainCharacters.tr();
    } else if (isRuleLowerChars && !hasLowerCaseChars(password)) {
      errorText = AppStrings.passwordMustContainLowercaseLetters.tr();
    } else if (isRuleUpperChars && !hasUpperCaseChars(password)) {
      errorText = AppStrings.passwordMustContainUppercaseLetters.tr();
    } else if (isRuleNumbers && !hasNumbers(password)) {
      errorText = AppStrings.passwordMustContainNumbers.tr();
    } else if (isRuleChars && !(hasLowerCaseChars(password) || hasUpperCaseChars(password))) {
      errorText = AppStrings.passwordMustContainCharacters.tr();
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkIdenticalPassword({required String firstPassword, required String secondPassword}) {
    String? errorText;
    if (secondPassword.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (firstPassword != secondPassword) {
      errorText = AppStrings.passwordsIsNotIdentical.tr();
    }
    return errorText;
  }

  String? checkFirstNameError(String? firstName) {
    String? errorText;
    if (firstName == null || firstName.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (firstName.length > 75) {
      errorText = 'AppStrings.theMaximumNameLengthIs75.tr(namedArgs: {name: AppStrings.firstName.tr().toLowerCase()})';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkLastNameError(String? lastName) {
    String? errorText;
    if (lastName == null || lastName.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (lastName.length > 75) {
      errorText = 'AppStrings.theMaximumNameLengthIs75.tr(namedArgs: {name: AppStrings.lastName.tr().toLowerCase()})';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkRegion(int? regionId) {
    String? errorText;
    if (regionId == null || regionId == 0) {
      errorText = 'AppStrings.selectRegion.tr()';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkBirthNameError(String? birthName) {
    String? errorText;
    if (birthName == null || birthName.isEmpty) {
      errorText = null;
    } else if (birthName.length > 75) {
      errorText = 'AppStrings.theMaximumNameLengthIs75.tr(namedArgs: {name: AppStrings.lastName.tr().toLowerCase()})';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkAddressError(String? address) {
    String? errorText;
    if (address == null || address.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (address.length > 100) {
      errorText = null;
    }
    return errorText;
  }

  String? checkBusinessAddressError(String? businessAddress) {
    String? errorText;
    if (businessAddress == null || businessAddress.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (businessAddress.length > 100) {
      errorText = null;
    }
    return errorText;
  }

  String? checkDate({required DateTime? date, required int day, required int month, required int year}) {
    String? errorText;
    if (date == null) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (date.isAfter(DateTime.now())) {
      errorText = 'AppStrings.theDateIsGreaterThanTheCurrentOne.tr()';
    } else if (date.year > year || date.year == year && date.month > month || date.year == year && date.month == month && date.day > day) {
      errorText = 'AppStrings.theDateIsWrong.tr()';
    } else if (day == 0 || month == 0 || year == 0) {
      errorText = 'AppStrings.theDateIsWrong.tr()';
    } else if (day.toString().contains('-') || month.toString().contains('-') || year.toString().contains('-')) {
      errorText = 'AppStrings.theDateIsWrong.tr()';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? checkDateDayOrMonth({required String? numberDateString, int maximumNumber = 31}) {
    String? errorText;
    if (numberDateString == null || numberDateString.isEmpty == true) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (numberDateString.contains('-')) {
      errorText = 'AppStrings.theDateIsWrong.tr()';
    } else {
      var numberUniversal = int.tryParse(numberDateString) ?? 0;
      if (numberUniversal == 0) {
        errorText = 'AppStrings.theDateIsWrong.tr()';
      } else if (numberUniversal > maximumNumber) {
        errorText = 'AppStrings.theDateIsWrong.tr()';
      } else {
        errorText = null;
      }
    }
    return errorText;
  }

  String? checkDateOfTheBeginningError(String? date) {
    String? errorText;
    if (date == null || date.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (date.length > 100) {
      errorText = null;
    }
    return errorText;
  }

  String? checkFullTimeError(String? fullTime) {
    String? errorText;
    if (fullTime == null || fullTime.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (!hasNumbers(fullTime) && hasLowerCaseChars(fullTime) && !hasUpperCaseChars(fullTime) || hasSpecialChars(fullTime)) {
      errorText = 'AppStrings.useNumbersOnly.tr()';
    } else if (fullTime.length > 100) {
      errorText = null;
    }
    return errorText;
  }

  String? checkPartTimeError(String? partTime) {
    String? errorText;
    if (partTime == null || partTime.isEmpty) {
      errorText = AppStrings.fieldIsEmpty.tr();
    } else if (hasNumbers(partTime) && hasLowerCaseChars(partTime) && hasUpperCaseChars(partTime) || hasSpecialChars(partTime)) {
      errorText = 'AppStrings.useNumbersOnly.tr()';
    } else if (partTime.length > 100) {
      errorText = null;
    }
    return errorText;
  }

  String? checkFile({File? file, bool checkFile = true}) {
    String? errorText;
    if (file == null) {
      if (checkFile == true) {
        errorText = 'AppStrings.addTheFileItsRequired.tr()';
      } else {
        errorText = null;
      }
    } else if ((file.lengthSync() / 1000) > 5000) {
      errorText = 'AppStrings.theMaximumFileSizeIs5MB.tr()';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String mapServerErrorMessageToUser({required String serverErrorMessage, required String errorTextMessage}) {
    if (serverErrorMessage.startsWith("text")) {
      //TODO: message
    }
    return errorTextMessage;
  }
}
