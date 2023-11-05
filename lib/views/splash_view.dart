import 'package:aerolink/constants/styles/app_colors.dart';
import 'package:aerolink/constants/strings/image_strings.dart';
import 'package:aerolink/constants/strings/text_strings.dart';
import 'package:aerolink/constants/sizes/app_dimensions.dart';
import 'package:aerolink/constants/styles/text_styles.dart';
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

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, ROUTE_LOGIN, (route) => false);
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
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Container(
          color: AppColors.primary,
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
                    image: AssetImage(ImageStrings.figureAppLogo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 5.sp)),
              Text(
                TextString.appName,
                style: AppTextStyles.whiteTitleText(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
