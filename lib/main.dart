import 'package:aerolink/routes/app_routes.dart';
import 'package:aerolink/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp(initialWidget: SplashScreen()));
}

class MyApp extends StatelessWidget {
  final Widget initialWidget;

  const MyApp({Key? key, required this.initialWidget}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
              title: 'AeroLink',
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRoutes.generateRoute,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: initialWidget,
            ));
  }
}
