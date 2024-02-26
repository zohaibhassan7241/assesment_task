import 'package:assesment_task/core/extensions/context_extension.dart';
import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: context.width / 1.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
            SvgPicture.asset(
              AppAssets.iconAlert,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Alert!",
              style: AppTextStyles.kBodyMedium,
            ),
            const Gap(5),
            Text(
              subtitle,
              style: AppTextStyles.kBodySmall,
            ),
            const Gap(30),
            CustomButton(
                width: context.width / 1.6,
                onPressed: () {
                  context.push(Routes.signUpPgae);
                },
                text: 'Signup'),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
