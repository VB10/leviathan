import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GrayDivider extends StatelessWidget {
  const GrayDivider({super.key, this.thickness, this.color});
  final double? thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: thickness ?? 2,
      color: color ?? context.appTheme.colorScheme.onError,
    );
  }
}

class GrayDividerVertical extends StatelessWidget {
  const GrayDividerVertical({super.key, this.thickness});
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(thickness: thickness ?? 2);
  }
}
