import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GrayDivider extends StatelessWidget {
  final double? thickness;
  final Color? color;
  const GrayDivider({super.key, this.thickness, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 1, thickness: thickness ?? 2, color: color ?? context.appTheme.colorScheme.onError);
  }
}

class GrayDividerVertical extends StatelessWidget {
  final double? thickness;
  const GrayDividerVertical({super.key, this.thickness});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(thickness: thickness ?? 2);
  }
}
