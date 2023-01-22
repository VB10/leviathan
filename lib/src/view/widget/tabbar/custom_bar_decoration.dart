import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomNavBarDecoration extends NavBarDecoration {
  CustomNavBarDecoration.defaultWithShadow({
    double blurRadius = 8,
    double spreadRadius = -4,
  }) : super(
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
            ),
          ],
        );

  CustomNavBarDecoration.lowWithShadow({
    double blurRadius = 2,
    double spreadRadius = -2,
  }) : super(
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
            ),
          ],
        );
}
