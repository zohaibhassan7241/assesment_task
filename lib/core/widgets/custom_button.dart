import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.width,
    required this.onPressed,
    required this.text,
    this.fontSize,
    this.textColor = AppColors.kWhite,
    this.fontWeight = FontWeight.w500,
    this.showBorder = false,
    this.padding,
    this.icon,
    this.height,
    this.isBorderOnTopLeft = true,
    this.isBorderOnTopRight = true,
    this.isBothCase = false,
    this.backgroundColor,
    this.horizontslIcon,
    this.horizontslIconRight,
    this.radius,
  }) : super(key: key);

  final double? width;
  final double? height;
  final BorderRadius? radius;

  final VoidCallback onPressed;
  final String text;
  final double? fontSize;
  final Color textColor;
  final FontWeight? fontWeight;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final bool isBorderOnTopLeft;
  final bool isBorderOnTopRight;
  final bool isBothCase;
  final Color? backgroundColor;
  final Widget? horizontslIcon;
  final Widget? horizontslIconRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: backgroundColor == null ? AppColors.kGradient : null,
        borderRadius: radius ?? BorderRadius.circular(30.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero),
        child: Text(
          text,
          style: AppTextStyles.kBodyMedium.copyWith(
            fontSize: fontSize ?? 15,
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
