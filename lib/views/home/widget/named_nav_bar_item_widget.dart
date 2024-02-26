import 'package:flutter/material.dart';

class NamedNavigationBarItemWidget extends BottomNavigationBarItem {
  final String initialLocation;
  final Widget navIcon;
  final Widget selectedIcon; // Added property for selected icon
  final String navBarLabel;

  NamedNavigationBarItemWidget({
    required this.initialLocation,
    required this.navIcon,
    required this.selectedIcon,
    required this.navBarLabel,
  }) : super(
          icon: navIcon,
          label: navBarLabel,
        );
}
