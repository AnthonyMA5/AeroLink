import 'package:aerolink/resources/app_dimensions.dart';
import 'package:aerolink/resources/logo_paths.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = AppDimensions.screenWidth(context);
    double screenHeight = AppDimensions.screenHeight(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: screenWidth,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 155.sp,
                height: 35.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //Se indica la imagen a utilizar, está declarado en el archivo LogoPaths.dart
                    image: AssetImage(LogoPaths.defaultLogo),
                    //Indicamos que la imagen rellene el contenedor
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ),
      )
    );
  }
}
