import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.leading,
    this.titleColor = AppColors.kTextColor,
    this.centerTitle = true,
    this.leadingIconColor,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Color titleColor;
  final bool centerTitle;
  final Widget? leading;
  final Color? leadingIconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.kStyleParadiseFont.copyWith(
          fontSize: 30,
        ),
      ),
      centerTitle: centerTitle,
      elevation: 0,
      shadowColor: Colors.transparent,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
