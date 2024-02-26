import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const int _primaryColorHexCode = 0XFF8A7EFE;

  static const int _primaryColorDarkHexCode = 0XFFE832B9;

  static const Color kPrimaryColor = Color(_primaryColorHexCode);
  static const Color kPrimaryColorDark = Color(_primaryColorDarkHexCode);

  static const Color kBlack = Colors.black;
  static const Color kWhite = Color(0XFFFFFFFF);
  static const Color kTextColor = Color(0XFF333333);
  static const Color kTextPinkColor = Color(0XFFDA33CF);
  static const Color klightPurpleColor = Color(0XFFEDBEE8);
  static const Color kresendColor = Color(0XFFB85ED0);
  static const Color kTextGreyColor = Color(0XFF777777);
  static const Color kDividerGreyColor = Color(0XFFBDBDBD);
  static const Color kTextLightGreyColor = Color(0XFF969696);
  static const Color kTextErrorColor = Color(0XFFD93333);
  static const Color kOrangeColor = Color(0XFFF57917);
  static const Color kButtonGreyColor = Color(0XFFCCCCCC);
  static const Color kBorderColor = Color(0XFFC1C1C1);
  static const Color kContainerBgColoor = Color(0XFFF7F7F7);
  //Selected NavbarColor:
  static Color kselectedHome = const Color(0XFF808BFF)..withOpacity(0.2);
  static Color kselectedAdd = const Color(0XFFC135F6).withOpacity(0.2);

  static Color kselectedProfile = const Color(0XFFF431A7).withOpacity(0.2);

  static const kGradient = LinearGradient(
    colors: [Color(_primaryColorHexCode), Color(_primaryColorDarkHexCode)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const kGradientText = LinearGradient(
    colors: [Color(_primaryColorHexCode), Color(_primaryColorDarkHexCode)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const MaterialColor kPrimarySwatch = MaterialColor(
    _primaryColorHexCode,
    <int, Color>{
      50: kPrimaryColor,
      100: kPrimaryColor,
      200: kPrimaryColor,
      300: kPrimaryColor,
      400: kPrimaryColor,
      500: kPrimaryColor,
      600: kPrimaryColor,
      700: kPrimaryColor,
      800: kPrimaryColor,
      900: kPrimaryColor,
    },
  );
}
