import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CommunityAlertDialog extends StatelessWidget {
  const CommunityAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.buttonText,
    this.onButtonPressed,
  });
  final String title;
  final String content;
  final String buttonText;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(textAlign: TextAlign.center, title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(textAlign: TextAlign.center, content),
          context.emptySizedHeightBoxLow,
          SizedBox(
            width: context.dynamicWidth(0.8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: context.lowBorderRadius,
                ),
              ),
              onPressed: onButtonPressed,
              child: Text(
                style: TextStyle(
                  color: context.appTheme.scaffoldBackgroundColor,
                ),
                buttonText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
