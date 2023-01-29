import 'package:flutter/material.dart';

class FullViewStack extends StatelessWidget {
  const FullViewStack({
    super.key,
    required this.height,
    required this.padding,
    required this.child,
    this.positionRight = false,
  });
  final double height;
  final double padding;
  final Widget child;
  final bool positionRight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          if (positionRight)
            child
          else
            Positioned(
              right: padding,
              left: padding,
              child: child,
            ),
        ],
      ),
    );
  }
}

class FullStackViewBanner extends FullViewStack {
  const FullStackViewBanner(
    Widget child, {
    super.key,
    double? height,
    super.positionRight,
  }) : super(
          height: height ?? 24,
          padding: -24,
          child: child,
        );
}
