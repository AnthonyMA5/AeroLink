import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 80.sp, left: 20.sp, right: 20.sp),
          child: PageView(
            controller: controller,
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
                      padding: EdgeInsets.only(top: 30.sp),
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
                      padding: EdgeInsets.only(top: 30.sp),
                      child: Text(
                        '¡EXPLORA EL MUNDO11!',
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
                      padding: EdgeInsets.only(top: 30.sp),
                      child: Text(
                        '¡EXPLORA EL MUNDO!222',
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
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 20.sp),
        height: 80.sp,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: ()=>controller.jumpToPage(2),
                child: Text(
                    'Omitir',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey
                  ),
                ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  spacing: 16,
                  dotColor: Color(0xFFDADADA),
                  activeDotColor: Color(0xFF876CFF),
                ),
                onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
              ),
            ),
            TextButton(
              onPressed: ()=>controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut),
              child: Text(
                  'Siguiente',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
