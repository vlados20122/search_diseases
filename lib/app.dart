import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:search_diseases/resources/app_theme.dart';
import 'package:search_diseases/utils/custom_scroll_behavior.dart';
import 'package:search_diseases/utils/navigate_mixin_utils.dart';


class App extends StatefulWidget with NavigateMixin {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          routeInformationParser: Modular.routeInformationParser,
          //TODO when in project added theme remove this line
          darkTheme: AppTheme.lightTheme.themeData,
          routerDelegate: Modular.routerDelegate,
          locale: context.locale,
          theme: AppTheme.of(context).themeData,
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child ?? Container(),
              ),
            );
          },
        ),
      ),
    );
  }
}
