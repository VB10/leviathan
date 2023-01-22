import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class DefaultOutlineInputBorder extends OutlineInputBorder {
  DefaultOutlineInputBorder(BuildContext context, {Color? color})
      : super(
          borderSide: BorderSide(
            color: color ?? context.colorScheme.onTertiary.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(8),
        );
}
