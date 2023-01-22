import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomGrayDivider extends StatelessWidget {
  const CustomGrayDivider({
    super.key,
    this.indent,
    this.endIndent,
    this.height,
    this.color,
  });
  factory CustomGrayDivider.heightZero({
    double? indent,
    double? endIndent,
    Color? color,
  }) {
    return CustomGrayDivider(
      endIndent: endIndent,
      indent: indent,
      color: color,
      height: 0,
    );
  }
  final double? indent;
  final double? endIndent;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? context.colorScheme.onTertiary,
      thickness: 0,
      indent: indent,
      endIndent: endIndent,
      height: height,
    );
  }
}
