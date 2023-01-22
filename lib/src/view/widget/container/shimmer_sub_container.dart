import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ShimmerSubContainer extends StatelessWidget
    with _ShimmerSubContainerSizeMixin {
  ShimmerSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      width: getRandomWidth(context),
      height: getRandomHeight(context),
      decoration: BoxDecoration(
        borderRadius: context.lowBorderRadius,
        color: context.colorScheme.onTertiary,
      ),
    );
  }
}

mixin _ShimmerSubContainerSizeMixin {
  final Random _random = Random();
  final double _randomHeightMaxValue = 1.5;
  final double _randomHeightMinValue = 1;
  final double _randomWidthMaxValue = 6;
  final double _randomWidthMinValue = 1.7;

  double getRandomDoubleValue(double min, double max) {
    return _random.nextDouble() * (max - min) + min;
  }

  double getRandomHeight(BuildContext context) {
    final randomHeightMultiplier =
        getRandomDoubleValue(_randomHeightMinValue, _randomHeightMaxValue);
    return context.lowValue * randomHeightMultiplier;
  }

  double getRandomWidth(BuildContext context) {
    final randomWidthMultiplier =
        getRandomDoubleValue(_randomWidthMinValue, _randomWidthMaxValue);
    return context.width / randomWidthMultiplier;
  }
}
