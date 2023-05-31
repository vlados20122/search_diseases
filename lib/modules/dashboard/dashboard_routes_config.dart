import 'package:search_diseases/route_interface.dart';


class DashboardRoutesConfig {
  static Schemes schemes = Schemes();
  static String route = '/';
  static String moduleRoute = "/dashboardModule/";
}

class Schemes {
  final dashBoard = DashboardRoute.scheme;
}

class DashboardRoute extends RouteDestination {
  static String scheme = DashboardRoutesConfig.route;

  @override
  String path() => DashboardRoutesConfig.moduleRoute;
}
