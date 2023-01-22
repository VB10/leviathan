import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class NormalShadow extends BoxShadow {
  NormalShadow(BuildContext context)
      : super(
          color: context.colorScheme.secondary.withOpacity(0.5),
          spreadRadius: 0.2,
        );
}
