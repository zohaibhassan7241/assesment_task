import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final String? title;
  final String? subTitle;
  final Function? press;
  final Color? textColor;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = false,
    this.title,
    this.subTitle,
    this.textColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title ??
              (login
                  ? "Don’t have an Account ? "
                  : "Already have an account! "),
          style: const TextStyle(color: AppColors.kTextColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            subTitle ?? (login ? "Sign Up" : "Login"),
            style: TextStyle(
              color: textColor ?? AppColors.kTextPinkColor,
              fontWeight: FontWeight.bold,
              decoration: textColor != null
                  ? TextDecoration.none
                  : TextDecoration.underline,
              decorationColor: AppColors.kTextPinkColor,
            ),
          ),
        )
      ],
    );
  }
}
