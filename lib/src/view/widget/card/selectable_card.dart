import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'package:leviathan/src/utility/product_text.dart';

class CustomSelectableCard extends StatefulWidget {
  const CustomSelectableCard({
    super.key,
    required this.onTap,
    required this.colorState,
    required this.text,
    this.text2,
  });

  final VoidCallback? onTap;
  final bool? colorState;
  final String? text;
  final String? text2;

  @override
  State<CustomSelectableCard> createState() => _CustomSelectableCardState();
}

class _CustomSelectableCardState extends State<CustomSelectableCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Card(
        margin: EdgeInsets.zero,
        color: (widget.colorState ?? false)
            ? context.colorScheme.primary
            : context.colorScheme.onBackground,
        child: Center(
          child: ProductText.bodyText1Primary(
            widget.text ?? '',
            color: widget.colorState != true
                ? context.colorScheme.secondary
                : context.colorScheme.background,
            context: context,
          ).align(textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
