import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:search_diseases/cubit/search_diseases_cubit.dart';
import 'package:search_diseases/modules/dashboard/dashboard_module.dart';
import 'package:search_diseases/modules/dashboard/dashboard_routes_config.dart';
import 'package:search_diseases/modules/login/login_module.dart';
import 'package:search_diseases/modules/login/login_routes_config.dart';
import 'package:search_diseases/splash_screen.dart';


class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory((i) => TextEditingController()),
    Bind((_) => Logger(printer: PrettyPrinter())),
    Bind((i) => SearchDiseasesCubit()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => const SplashScreen(), transition: TransitionType.defaultTransition),
    ModuleRoute(LoginRoutesConfig.moduleRoute, module: LoginModule(), transition: TransitionType.fadeIn),
    ModuleRoute(DashboardRoutesConfig.moduleRoute, module: DashboardModule(), transition: TransitionType.defaultTransition),
  ];
}
