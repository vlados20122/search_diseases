import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:search_diseases/cubit/search_diseases_cubit.dart';
import 'package:search_diseases/modules/login/screen/auth_screen.dart';

import 'login_routes_config.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => LoginRoutesConfig()),
    Bind.factory((i) => TextEditingController()),
    Bind((i) => SearchDiseasesCubit()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      LoginRoutesConfig.schemes.login,
      child: (_, __) => const AuthScreen(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 500),
    ),
  ];
}
