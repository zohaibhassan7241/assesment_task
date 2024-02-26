import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_app_bar.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/views/home/widget/home_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Smarty Social',
        centerTitle: false,
        actions: [
          SvgPicture.asset(
            AppAssets.iconSearch,
            height: 25,
            width: 25,
          ),
          const Gap(20),
          SvgPicture.asset(
            AppAssets.iconBell,
            height: 25,
            width: 25,
          ),
          const Gap(20),
          SvgPicture.asset(
            AppAssets.iconnCrown,
            height: 25,
            width: 25,
          ),
          const Gap(20),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Top Feeds',
              style: AppTextStyles.kBodyLarge,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(10);
              },
              itemBuilder: (BuildContext context, int index) {
                return const HomePostWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
