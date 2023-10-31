import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 80.sp, left: 20.sp, right: 20.sp),
          child: PageView(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/img_onboarding_1.png',
                      width: SizerUtil.deviceType == DeviceType.mobile
                          ? 250.sp
                          : 180.sp,
                      height: SizerUtil.deviceType == DeviceType.mobile
                          ? 250.sp
                          : 180.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.sp),
                      child: Text(
                        '¡EXPLORA EL MUNDO!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizerUtil.deviceType == DeviceType.mobile
                              ? 18.sp
                              : 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.sp),
                      child: Text(
                        'Descubre experiencias únicas con nuestros tour y viajes excepcionales. '
                        'Cada destino se convierte en una aventura inolvidable.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: SizerUtil.deviceType == DeviceType.mobile
                              ? 13.sp
                              : 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 20.sp),
        height: 80.sp,
        child: Row(

        ),
      ),
    );
  }
}
