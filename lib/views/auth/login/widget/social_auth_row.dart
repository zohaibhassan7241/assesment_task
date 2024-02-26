import "package:assesment_task/core/utils/constants/app_assets.dart";
import "package:assesment_task/core/widgets/custom_gap.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class SocialAuthRow extends StatelessWidget {
  const SocialAuthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.iconGoogle,
            height: 40,
            width: 40,
          ),
        ),
        const Gap(30),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.iconFaceboook,
            height: 40,
            width: 40,
          ),
        ),
        const Gap(30),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.iconTwitter,
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
