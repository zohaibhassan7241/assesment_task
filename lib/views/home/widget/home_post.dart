import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/custom_alert_signup.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/views/home/widget/post_bottom_button.dart';
import 'package:flutter/material.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      color: AppColors.kContainerBgColoor,
      child: Column(
        children: [
          // HEADER SECTION OF THE POST
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 20,
            ).copyWith(right: 0),
            child: Row(
              children: <Widget>[
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    AppAssets.imageProfile,
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Martina John',
                          style: AppTextStyles.kBodyMedium,
                        ),
                        Text(
                          'Yesterday',
                          style: AppTextStyles.kBodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: <Widget>[
                        CustomButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => const CustomAlertDialog(
                                title: 'Password Reset',
                                subtitle:
                                    'Please Sign Up to access the functionality.',
                              ),
                            );
                          },
                          text: 'Follow',
                          backgroundColor: AppColors.kButtonGreyColor,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 35,
                        ),
                        Positioned(
                          top: -12,
                          child: Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: AppColors.kOrangeColor,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              'Comming Soon',
                              style: AppTextStyles.kBodySmall.copyWith(
                                fontSize: 9,
                                color: AppColors.kWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          // IMAGE SECTION OF THE POST
          GestureDetector(
            onDoubleTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: Image.asset(
                    AppAssets.imagePost,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          // LIKE, COMMENT SECTION OF THE POST
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const PostBottomButton(
                icon: AppAssets.iconHeart,
                text: '236',
              ),
              const PostBottomButton(
                icon: AppAssets.iconComment,
                text: '133',
                textColor: AppColors.kTextLightGreyColor,
              ),
              PostBottomButton(
                image: Image.asset(
                  AppAssets.iconView,
                  height: 22,
                  width: 22,
                ),
                text: '1145',
                textColor: AppColors.kTextColor,
              ),
              const PostBottomButton(
                icon: AppAssets.iconMessage,
                text: '23',
                textColor: AppColors.kTextLightGreyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
