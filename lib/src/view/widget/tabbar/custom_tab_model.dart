import 'package:flutter/material.dart';

@immutable
class CustomTabItem {
  const CustomTabItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.title,
  });
  final String title;
  final Widget activeIcon;
  final Widget inactiveIcon;
}

@immutable
class NavbarColor {
  const NavbarColor({
    required this.inactiveColorPrimary,
    required this.activeColorPrimary,
    required this.activeColorSecondary,
  });

  final Color inactiveColorPrimary;
  final Color activeColorPrimary;
  final Color activeColorSecondary;
}
