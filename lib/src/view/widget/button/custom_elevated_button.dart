import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:leviathan/src/view/utility/size/widget_size.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.color,
    this.borderRadiusNotAll,
    this.tapTargetSize = false,
    this.colorBorder,
    this.height,
    this.width,
    this.borderRadius,
    this.onPressed,
    required this.child,
  });
  final Widget child;
  final Color? color;
  final Color? colorBorder;
  final double? height;
  final double? width;
  final double? borderRadius;
  final bool? tapTargetSize;
  final BorderRadius? borderRadiusNotAll;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          tapTargetSize:
              tapTargetSize ?? false ? MaterialTapTargetSize.shrinkWrap : null,
          backgroundColor:
              MaterialStateProperty.all(color ?? context.colorScheme.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: borderRadiusNotAll ??
                  BorderRadius.circular(borderRadius ?? WidgetSizes.spacingXSS),
              side: BorderSide(color: context.colorScheme.background),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
