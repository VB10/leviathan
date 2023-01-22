import 'package:flutter/material.dart';

abstract class ITextTheme {
  ITextTheme(this.primaryColor);
  final Color? primaryColor;
  late final TextTheme data;
  TextStyle? headline1;
  TextStyle? headline2;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? subtitle1;
  TextStyle? subtitle2;
  TextStyle? bodyText1;
  TextStyle? bodyText2;
  TextStyle? button;
  TextStyle? caption;
  TextStyle? overline;
  String? fontFamily;
}

abstract class IColors {
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color get indentColor;
  Color? tabbarSelectedColor;
  Color? tabbarNormalColor;
  Brightness? brightness;

  Color get textColor;

  ColorScheme? buttonColorScheme;
  ColorScheme? colorScheme;
}
