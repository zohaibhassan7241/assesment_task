import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_constants.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: AppConstants.kAppFontFamily,
    primaryColor: AppColors.kPrimaryColor,
    primarySwatch: AppColors.kPrimarySwatch,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.kTextColor),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.kPrimaryColor,
      selectedLabelStyle: AppTextStyles.kBodyLarge,
    ),
    textTheme: const TextTheme(
      bodyMedium: AppTextStyles.kBodyMedium,
      bodyLarge: AppTextStyles.kBodyLarge,
      headlineMedium: AppTextStyles.kHeadingMedium,
      headlineLarge: AppTextStyles.kHeadingLarge,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.kWhite),
      fillColor: MaterialStateProperty.all(AppColors.kPrimaryColor),
    ),
  );
}
