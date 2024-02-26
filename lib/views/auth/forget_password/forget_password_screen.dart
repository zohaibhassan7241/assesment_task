import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/core/widgets/custom_text_field.dart';
import 'package:assesment_task/views/auth/widget/auth_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                icon: AppAssets.iconForget,
                title: 'Forgot Password',
              ),
              const Gap(50),
              Text(
                'Email Address Here',
                style: AppTextStyles.kHeadingLarge.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Gap(5),
              Text(
                'Enter the email address associated'
                'with your account.',
                textAlign: TextAlign.center,
                style: AppTextStyles.kBodySmall.copyWith(
                    color: AppColors.kTextLightGreyColor, fontSize: 14),
              ),
              const Gap(30),
              const CustomTextField(
                labelText: 'Email address',
              ),
              const Gap(40),
              CustomButton(
                onPressed: () {
                  context.push(Routes.otpPage);
                },
                text: 'Recover Password',
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
