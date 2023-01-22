import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:leviathan/src/utility/product_text.dart';
import 'package:leviathan/src/view/padding/page_padding.dart';
import 'package:leviathan/src/view/utility/size/widget_size.dart';

class CircleCheckBox extends StatelessWidget {
  const CircleCheckBox({
    super.key,
    required this.isSelected,
    required this.onPressed,
    required this.title,
  });

  final bool isSelected;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: WidgetSizes.spacingXl,
            width: WidgetSizes.spacingXl,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: isSelected
                    ? context.colorScheme.primary
                    : context.colorScheme.secondary.withOpacity(.2),
              ),
            ),
            child: Padding(
              padding: const PagePadding.all() / 2,
              child: CircleAvatar(
                backgroundColor: isSelected
                    ? context.colorScheme.primary
                    : Colors.transparent,
              ),
            ),
          ),
          Padding(
            padding: const PagePadding.onlyLeft(),
            child: ProductText.subtitle1(title, context: context),
          )
        ],
      ),
    );
  }
}
