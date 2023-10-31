import 'package:aerolink/views/splash_view.dart';
import 'package:flutter/cupertino.dart';

const String ROUTE_SPLASH = '/splash';
const String ROUTE_LOGIN = '/login';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_SPLASH:
        return CupertinoPageRoute(
            builder: (_) => SplashView(), settings: settings);
      case ROUTE_LOGIN:
        return CupertinoPageRoute(
            builder: (_) => SplashView(), settings: settings);
      default:
        return CupertinoPageRoute(
          builder: (_) => SplashView(),
          settings:
              settings, // Pasar las configuraciones a la pantalla de destino
        );
    }
  }
}
