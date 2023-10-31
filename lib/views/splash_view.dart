import 'package:aerolink/resources/app_dimensions.dart';
import 'package:aerolink/resources/logo_paths.dart';
import 'package:aerolink/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, ROUTE_ONBOARDING, (route) => false);
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = AppDimensions.screenWidth(context);
    double screenHeight = AppDimensions.screenHeight(context);

    return Scaffold(
      backgroundColor: Color(0xFF4852FF),
      body: SafeArea(
        child: Container(
          color: Color(0xFF4852FF),
          width: screenWidth,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80.sp,
                height: 80.sp,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(LogoPaths.figureLogo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 5.sp)),
              Text(
                'AeroLink',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
