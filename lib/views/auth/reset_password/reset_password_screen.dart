import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/core/widgets/custom_text_field.dart';
import 'package:assesment_task/views/auth/widget/auth_header.dart';
import 'package:assesment_task/views/auth/widget/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthHeader(
                icon: AppAssets.iconReset,
                title: 'Reset Password',
              ),
              const Gap(20),
              const Gap(60),
              Text(
                'Enter New Password',
                style: AppTextStyles.kHeadingLarge.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Gap(5),
              Text(
                'Your new password must be different'
                'from previously used password.',
                textAlign: TextAlign.center,
                style: AppTextStyles.kBodySmall.copyWith(
                    color: AppColors.kTextLightGreyColor, fontSize: 14),
              ),
              const Gap(20),
              CustomTextField(
                labelText: 'Password',
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  color: AppColors.kTextGreyColor,
                  iconSize: 25.0,
                ),
              ),
              const Gap(20),
              CustomTextField(
                labelText: 'Confirm Password',
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  color: AppColors.kTextGreyColor,
                  iconSize: 25.0,
                ),
              ),
              const Gap(60),
              CustomButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => const CustomDialog(
                      title: 'Password Reset',
                      subtitle: 'Your password has been changed',
                    ),
                  );
                },
                text: 'Continue',
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
