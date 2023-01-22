import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:leviathan/src/utility/index.dart';
import 'package:leviathan/src/view/utility/size/widget_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.textController,
    this.focusNode,
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.maxLines,
    this.initialValue,
    this.isReadOnly = false,
    this.onChange,
    this.isRequired,
    this.onTap,
    this.enabled,
    this.inputFormatters,
    this.autoFillHints,
    this.obscureText = false,
    this.labelStyle,
    this.decoration,
    this.validator,
    this.hasInitialSize = true,
  });
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? initialValue;
  final bool? isRequired;
  final void Function(String value)? onChange;
  final String? Function(String?)? validator;
  final Iterable<String>? autoFillHints;
  final bool? enabled;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final TextStyle? labelStyle;
  final InputDecoration? decoration;
  final bool hasInitialSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        obscureText: obscureText,
        maxLines: maxLines,
        cursorColor: context.colorScheme.primary,
        keyboardType: keyboardType,
        initialValue: initialValue,
        onChanged: onChange,
        onTap: onTap,
        enabled: enabled,
        readOnly: isReadOnly,
        inputFormatters: inputFormatters,
        controller: textController,
        autofillHints: autoFillHints ?? [AutofillHints.addressCity],
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        style: context.textTheme.subtitle1?.copyWith(
          color: context.colorScheme.secondary,
          fontSize: WidgetSizes.spacingS,
        ),
        decoration: decoration ?? _buildTextFieldDecoration(context),
      ),
    );
  }

  String? get _helperText => hintText ?? labelText;

  InputDecoration _buildTextFieldDecoration(BuildContext context) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      enabledBorder: outlineInputBorder(context),
      disabledBorder: outlineInputBorder(context),
      focusedBorder: outlineInputBorder(context),
      label: _helperText != null
          ? _RedDotWidget(hintText: _helperText, isRequired: isRequired)
          : null,
      labelStyle: labelStyle ??
          context.textTheme.bodyText1?.copyWith(
            color: context.appTheme.buttonTheme.colorScheme?.shadow,
          ),
      border: outlineInputBorder(context),
      hintStyle: context.textTheme.bodyText2?.copyWith(
        fontWeight: FontWeight.w400,
        color: context.colorScheme.onTertiary,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(BuildContext context) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: context.colorScheme.outline,
        ),
        borderRadius: context.lowBorderRadius,
      );
}

class _RedDotWidget extends StatelessWidget {
  const _RedDotWidget({
    required this.hintText,
    required this.isRequired,
  });

  final String? hintText;
  final bool? isRequired;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: hintText,
        children: [
          TextSpan(
            text: (isRequired ?? false) ? ' ${SpecialKeys.asterisk}' : '',
            style: context.textTheme.bodyText1?.copyWith(
              color: context.colorScheme.error,
            ),
          )
        ],
      ),
    );
  }
}
