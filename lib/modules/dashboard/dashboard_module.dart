import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_routes_config.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => DashboardRoutesConfig()),
    Bind.factory((i) => TextEditingController()),
    // Bind((i) => DashboardCubit()),
  ];

  @override
  List<ModularRoute> get routes => [
  ];
}
