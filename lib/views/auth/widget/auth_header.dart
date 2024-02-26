import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthHeader extends StatelessWidget {
  final String icon;
  final String title;
  const AuthHeader({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          width: 70,
          height: 70,
        ),
        const Gap(10),
        Text(
          title,
          style: AppTextStyles.kgradientTextStyle,
        ),
      ],
    );
  }
}
