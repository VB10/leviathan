import 'package:flutter/material.dart';
import 'package:leviathan/src/utility/auto_fill_hint_items.dart';
import 'package:leviathan/src/view/utility/formatter/empty_input_formatter.dart';
import 'package:leviathan/src/view/widget/index.dart';

typedef FutureStringResult = Future<String?> Function();

class CustomTextFieldAction extends StatefulWidget {
  const CustomTextFieldAction({
    super.key,
    this.validator,
    this.label,
    required this.onAction,
    required this.controller,
    this.hasInitialSize = true,
    this.enabled,
    this.isRequired,
  });
  final String? Function(String?)? validator;
  final String? label;
  final FutureStringResult onAction;
  final bool? enabled;
  final bool hasInitialSize;
  final TextEditingController controller;

  final bool? isRequired;

  @override
  State<CustomTextFieldAction> createState() => _CustomTextFieldActionState();
}

class _CustomTextFieldActionState extends State<CustomTextFieldAction> {
  void _updateController(String? value) {
    if (value == null || value.isEmpty) return;
    widget.controller.text = value;
  }

  Future<void> callAction() async {
    final result = await widget.onAction.call();
    _updateController(result);
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onTap: callAction,
      isRequired: widget.isRequired,
      hasInitialSize: widget.hasInitialSize,
      enabled: widget.enabled,
      textController: widget.controller,
      inputFormatters: [EmptyInputFormatter()],
      suffixIcon: IconButton(
        onPressed: callAction,
        icon: const Icon(Icons.chevron_right_outlined),
      ),
      hintText: widget.label,
      autoFillHints: AutoFillHintItems.normalTitle,
      validator: widget.validator,
    );
  }
}
