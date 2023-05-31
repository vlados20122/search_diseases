import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:search_diseases/app.dart';
import 'package:search_diseases/app_module.dart';
import 'package:search_diseases/utils/flavors_utils.dart';


final logger = Logger(printer: PrettyPrinter());

// ignore: constant_identifier_names
const String _PATH_TO_TRANSLATIONS_FILE = 'assets/translations';

// ignore: constant_identifier_names
const String ENGLISH_LOCALE_CODE = 'en';


const Map<String, Locale> supportedLocales = {
  ENGLISH_LOCALE_CODE: Locale(ENGLISH_LOCALE_CODE),
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
  await PackageInfo.fromPlatform().then((PackageInfo packageInfo) async {
    AppConfig.initAppConfig(
      packageName: packageInfo.packageName,
      appName: packageInfo.appName,
      appVersion: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
    );
  }).whenComplete(
        () => runApp(ModularApp(
        module: AppModule(),
        child: EasyLocalization(
          supportedLocales: supportedLocales.values.toList(),
          fallbackLocale: supportedLocales[ENGLISH_LOCALE_CODE],
          path: _PATH_TO_TRANSLATIONS_FILE,
          saveLocale: true,
          useOnlyLangCode: true,
          child: const App(),
        ))),
  );
}
