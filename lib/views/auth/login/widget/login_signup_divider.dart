import "package:assesment_task/core/utils/constants/app_colors.dart";
import "package:assesment_task/core/utils/constants/app_text_styles.dart";
import "package:flutter/material.dart";

class LoginSignupDivider extends StatelessWidget {
  const LoginSignupDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: AppColors.kDividerGreyColor,
            thickness: 1.2,
          ),
        ),
        const SizedBox(
          width: 13.0,
        ),
        Text(title, style: AppTextStyles.kBodySmall),
        const SizedBox(
          width: 13.0,
        ),
        const Expanded(
          child: Divider(
            thickness: 1.2,
            color: AppColors.kDividerGreyColor,
          ),
        ),
      ],
    );
  }
}
