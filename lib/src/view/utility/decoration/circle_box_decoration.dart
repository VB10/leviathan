import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CircleBoxDecoration extends BoxDecoration {
  CircleBoxDecoration(BuildContext context)
      : super(shape: BoxShape.circle, border: Border.all(color: context.colorScheme.onSecondary));

  CircleBoxDecoration.byColor({required BuildContext context, Color? color})
      : super(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: color ?? context.colorScheme.onSecondary),
        );
}
