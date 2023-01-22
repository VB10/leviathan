import 'package:flutter/material.dart';

class ColumnWithSpacing extends StatelessWidget {
  /// Default [CrossAxisAlignment] = MainAxisAlignment.start
  ///
  /// Default [MainAxisAlignment] = CrossAxisAlignment.center
  const ColumnWithSpacing({
    super.key,
    required this.children,
    required this.space,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.fromBottom = false,
    this.mainAxisAlignment,
  });

  final List<Widget> children;
  final double space;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final bool fromBottom;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: children
          .map(
            (child) => Padding(
              padding: EdgeInsets.only(
                top: fromBottom ? 0 : space,
                bottom: fromBottom ? space : 0,
              ),
              child: child,
            ),
          )
          .toList(),
    );
  }
}
