import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/already_have_account.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/views/auth/widget/auth_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AuthHeader(
              icon: AppAssets.iconEmail,
              title: 'Email Verification',
            ),
            const Gap(60),
            Text(
              'Get Your Code',
              style: AppTextStyles.kHeadingLarge.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const Gap(5),
            Text(
              'Please enter the 4 digit code that'
              'send to your email address.',
              textAlign: TextAlign.center,
              style: AppTextStyles.kBodySmall
                  .copyWith(color: AppColors.kTextLightGreyColor, fontSize: 14),
            ),
            const Gap(30),
            OtpTextField(
              numberOfFields: 4,
              fillColor: AppColors.klightPurpleColor,
              focusedBorderColor: const Color.fromARGB(255, 251, 194, 246),
              filled: true,
              showFieldAsBox: false,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              },
            ),
            const Gap(10),
            AlreadyHaveAnAccountCheck(
                title: 'If you don’t receive code! ',
                subTitle: 'Resend',
                textColor: AppColors.kresendColor,
                press: () {}),
            const Gap(60),
            CustomButton(
              onPressed: () {
                context.push(Routes.resetPage);
              },
              text: 'Verify and Proceed',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
