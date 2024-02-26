import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          )),
      const Gap(5),
      const Text(
        "Remember me?",
        style: AppTextStyles.kBodySmall,
      )
    ]);
  }
}
