import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:leviathan/src/view/padding/page_padding.dart';
import 'package:leviathan/src/view/widget/container/shimmer_sub_container.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({
    this.padding,
    this.borderRadius,
    this.height,
    this.width,
    super.key,
    this.child,
  });
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colorScheme.onTertiary.withOpacity(0.3),
      highlightColor: context.colorScheme.onTertiary.withOpacity(0.1),
      child: Container(
        height: height,
        padding: padding ?? const PagePadding.verticalLowSymmetric(),
        width: width,
        decoration:
            BoxDecoration(borderRadius: borderRadius ?? BorderRadius.zero),
        child: child ?? ShimmerSubContainer(),
      ),
    );
  }
}
