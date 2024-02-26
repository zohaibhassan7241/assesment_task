import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/already_have_account.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          /* ---------------------------------- logo ---------------------------------- */
          Image.asset(
            AppAssets.appLogo,
            height: 200,
            width: 200,
          ),
          /* --------------------------------- appname -------------------------------- */
          const Text(
            'Smarty',
            style: AppTextStyles.kStyleParadiseFont,
          ),
          const Text(
            'AI Try On',
            style: AppTextStyles.kBodyMedium,
          ),
          const Gap(30),
          const Text(
            'A New Journey to Fashion World!',
            style: AppTextStyles.kBodyMedium,
          ),
          const Gap(30),
          /* ------------------------------ signup button ----------------------------- */
          CustomButton(
            text: 'Signup',
            onPressed: () {
              context.push(Routes.signUpPgae);
            },
          ),
          const Gap(10),
          /* ------------------------- Already have an account ------------------------ */
          AlreadyHaveAnAccountCheck(
            press: () {
              context.push(Routes.loginPage);
            },
          ),
          const Gap(20),
          /* ---------------------------------- skip ---------------------------------- */
          InkWell(
            onTap: () {
              context.push(Routes.homePage);
            },
            child: Text(
              'Skip',
              style: AppTextStyles.kBodyMedium.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.kTextLightGreyColor,
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
