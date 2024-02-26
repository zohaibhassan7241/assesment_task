import "package:assesment_task/core/utils/constants/app_colors.dart";
import "package:assesment_task/core/utils/constants/app_constants.dart";
import "package:assesment_task/core/utils/constants/text_shader.dart";
import "package:flutter/material.dart";

class AppTextStyles {
  static const TextStyle kBodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.kTextColor,
  );
  static const TextStyle kBodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.kTextColor,
  );

  static const TextStyle kBodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.kTextColor,
  );

  static const TextStyle kHeadingMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kTextColor,
  );

  static const TextStyle kHeadingSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.kTextColor,
  );

  static const TextStyle kHeadingLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.kTextColor,
  );
  static const TextStyle kStyleParadiseFont = TextStyle(
    fontFamily: AppConstants.kAppHeadingFontFamily,
    fontSize: 50,
    fontWeight: FontWeight.w400,
    color: AppColors.kTextColor,
  );

  static TextStyle kgradientTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    foreground: Paint()..shader = linearGradient,
  );
}
