import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostBottomButton extends StatelessWidget {
  final String? icon;
  final String text;
  final Color? textColor;
  final Widget? image;
  const PostBottomButton({
    super.key,
    this.icon,
    required this.text,
    this.textColor,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image ??
            SvgPicture.asset(
              icon ?? "",
              height: 20,
              width: 20,
            ),
        const Gap(10),
        Text(text,
            style: AppTextStyles.kBodySmall.copyWith(
              color: textColor,
            )),
      ],
    );
  }
}
