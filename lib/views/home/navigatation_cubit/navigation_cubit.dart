import 'package:assesment_task/core/router/router_constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(const NavigationState(bottomNavItems: Routes.homePage, index: 0));

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(const NavigationState(bottomNavItems: Routes.homePage, index: 0));
        break;
      case 1:
        emit(
            const NavigationState(bottomNavItems: Routes.createPage, index: 1));
        break;
      case 2:
        emit(const NavigationState(
            bottomNavItems: Routes.profilePage, index: 2));
        break;
    }
  }
}
