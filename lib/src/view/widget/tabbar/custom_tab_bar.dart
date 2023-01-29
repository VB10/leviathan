import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:leviathan/src/view/widget/tabbar/custom_bar_decoration.dart';
import 'package:leviathan/src/view/widget/tabbar/custom_tab_model.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.screens,
    required this.tabs,
    required this.controller,
    this.navbarColor,
  }) : assert(
          screens.length == tabs.length,
          'You have to send same item for screen and tab',
        );
  final List<Widget> screens;
  final List<CustomTabItem> tabs;
  final PersistentTabController controller;
  final NavbarColor? navbarColor;
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  late final List<Widget> _screens;
  late final List<CustomTabItem> _tabs;
  late final NavbarColor _navbarColor;
  @override
  void initState() {
    super.initState();
    _screens = widget.screens;
    _tabs = widget.tabs;
    _navbarColor = NavbarColor(
      inactiveColorPrimary: widget.navbarColor?.inactiveColorPrimary ??
          context.colorScheme.onSurface,
      activeColorPrimary:
          widget.navbarColor?.activeColorPrimary ?? context.colorScheme.primary,
      activeColorSecondary: widget.navbarColor?.activeColorSecondary ??
          context.colorScheme.onSecondary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: widget.controller,
      screens: _screens,
      items: _navBarsItems(context),
      padding: const NavBarPadding.all(0),
      navBarStyle: NavBarStyle.style7,
      decoration: CustomNavBarDecoration.lowWithShadow(),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return _tabs
        .map(
          (e) => PersistentBottomNavBarItem(
            inactiveColorPrimary: _navbarColor.inactiveColorPrimary,
            activeColorPrimary: _navbarColor.activeColorPrimary,
            activeColorSecondary: _navbarColor.activeColorSecondary,
            contentPadding: 7,
            icon: e.activeIcon,
            inactiveIcon: e.inactiveIcon,
            title: e.title,
            textStyle: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
        .toList();
  }
}
