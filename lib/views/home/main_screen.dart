import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/views/home/navigatation_cubit/navigation_cubit.dart';
import 'package:assesment_task/views/home/widget/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final Widget screen;

  MainScreen({Key? key, required this.screen}) : super(key: key);

  final tabs = [
    /// Home
    SalomonBottomBarItem(
      initialLocation: Routes.homePage,
      icon: SvgPicture.asset(
        AppAssets.iconHometab,
        width: 30,
        height: 30,
      ),
      title: const Text(
        "Explore",
        style: AppTextStyles.kBodyMedium,
      ),
      selectedColor: AppColors.kselectedHome,
    ),

    /// Likes
    SalomonBottomBarItem(
      initialLocation: Routes.createPage,
      icon: SvgPicture.asset(
        AppAssets.iconAdd,
        width: 30,
        height: 30,
      ),
      title: const Text(
        "Create",
        style: AppTextStyles.kBodyMedium,
      ),
      selectedColor: AppColors.kselectedAdd,
    ),

    /// Profile
    SalomonBottomBarItem(
      initialLocation: Routes.profilePage,
      icon: SvgPicture.asset(
        AppAssets.iconProfile,
        width: 30,
        height: 30,
      ),
      title: const Text(
        "Profile",
        style: AppTextStyles.kBodyMedium,
      ),
      selectedColor: AppColors.kselectedProfile,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: _buildBottomNavigation(context, tabs),
    );
  }
}

BlocBuilder<NavigationCubit, NavigationState> _buildBottomNavigation(
        mContext, List<SalomonBottomBarItem> tabs) =>
    BlocBuilder<NavigationCubit, NavigationState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return SalomonBottomBar(
          currentIndex: state.index,
          onTap: (value) {
            if (state.index != value) {
              context.read<NavigationCubit>().getNavBarItem(value);
              context.go(tabs[value].initialLocation);
            }
          },
          items: tabs.map((tab) {
            return SalomonBottomBarItem(
              icon: tab.icon,
              title: tab.title,
              initialLocation: tab.initialLocation,
            );
          }).toList(),
        );
        // return BottomNavigationBar(
        //   onTap: (value) {
        //     if (state.index != value) {
        //       context.read<NavigationCubit>().getNavBarItem(value);
        //       context.go(tabs[value].initialLocation);
        //     }
        //   },
        //   elevation: 0,
        //   backgroundColor: AppColors.kContainerColor,
        //   unselectedItemColor: AppColors.kWhite,
        //   selectedIconTheme: IconThemeData(
        //     size: ((IconTheme.of(mContext).size)! * 1.3),
        //     color: AppColors.kPrimaryColor,
        //   ),
        //   items: tabs.map((tab) {
        //     return BottomNavigationBarItem(
        //       icon: tab.icon,
        //       label: tab.label,
        //       activeIcon: tab.selectedIcon,
        //     );
        //   }).toList(),
        //   currentIndex: state.index,
        //   type: BottomNavigationBarType.fixed,
        // );
      },
    );
