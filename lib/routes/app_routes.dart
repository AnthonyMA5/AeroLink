import 'package:aerolink/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

const String ROUTE_SPLASH = '/splash';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_SPLASH:
        return CupertinoPageRoute(
            builder: (_) => SplashScreen(),
            settings: settings);
      default:
        return CupertinoPageRoute(
          builder: (_) => SplashScreen(),
          settings: settings, // Pasar las configuraciones a la pantalla de destino
        );
    }
  }
}
