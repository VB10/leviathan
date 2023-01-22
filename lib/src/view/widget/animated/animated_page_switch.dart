import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AnimatedPageSwitch extends StatelessWidget {
  const AnimatedPageSwitch(
      {super.key, required this.isPageLoaded, required this.loaderChild, required this.completedChild});
  final bool isPageLoaded;
  final Widget loaderChild;
  final Widget completedChild;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: context.durationLow,
      crossFadeState: isPageLoaded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: loaderChild,
      secondChild: isPageLoaded ? const SizedBox.shrink() : completedChild,
    );
  }
}
