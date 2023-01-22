import 'package:flutter/material.dart';

class FullViewStack extends StatelessWidget {
  const FullViewStack(
      {Key? key,
      required this.height,
      required this.padding,
      required this.child,
      this.positionRight = false})
      : super(key: key);
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
            (positionRight)
                ? child
                : Positioned(
                    right: padding,
                    left: padding,
                    child: child,
                  ),
          ],
        ));
  }
}

class FullStackViewBanner extends FullViewStack {
  FullStackViewBanner(Widget child,
      {Key? key, double? height, bool positionRight = false})
      : super(
            key: key,
            height: height ?? 24,
            padding: -24,
            child: child,
            positionRight: positionRight);
}
