import 'package:aerolink/constants/sizes/text_sizes.dart';
import 'package:aerolink/constants/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {

  // Base text styles
  static TextStyle get textBase => const TextStyle(
    fontFamily: 'Poppins',
  );
  static TextStyle get textThin => textBase.copyWith(
    fontWeight: FontWeight.w100,
  );
  static TextStyle get textExtraLight => textBase.copyWith(
    fontWeight: FontWeight.w200,
  );
  static TextStyle get textLight => textBase.copyWith(
    fontWeight: FontWeight.w300,
  );
  static TextStyle get textRegular => textBase.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle get textMedium => textBase.copyWith(
    fontWeight: FontWeight.w500,
  );
  static TextStyle get textSemiBold => textBase.copyWith(
    fontWeight: FontWeight.w600,
  );
  static TextStyle get textBold => textBase.copyWith(
    fontWeight: FontWeight.w700,
  );
  static TextStyle get textExtraBold => textBase.copyWith(
    fontWeight: FontWeight.w800,
  );
  static TextStyle get textBlack => textBase.copyWith(
    fontWeight: FontWeight.w900,
  );

  // Title text
  static TextStyle titleText(BuildContext context) {
    return textSemiBold.copyWith(
      fontSize: titleTextSize,
      color: AppColors.textPrimary,
    );
  }

  static TextStyle whiteTitleText(BuildContext context) {
    return textSemiBold.copyWith(
      fontSize: titleTextSize,
      color: AppColors.textWhite,
    );
  }

}