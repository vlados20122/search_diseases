import 'package:search_diseases/route_interface.dart';


class LoginRoutesConfig {
  static Schemes schemes = Schemes();
  static String route = '/';
  static String moduleRoute = "/loginModule/";
}

class Schemes {
  final login = LoginRoute.scheme;
}


class LoginRoute extends RouteDestination {
  static String scheme = '${LoginRoutesConfig.route}login';

  @override
  String path() => '${LoginRoutesConfig.moduleRoute}login';
}

