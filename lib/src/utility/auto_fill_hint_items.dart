import 'package:flutter/material.dart';

class AutoFillHintItems {
  AutoFillHintItems._();

  static const List<String> emailHints = [
    AutofillHints.email,
    AutofillHints.username
  ];
  static const List<String> passwordHints = [
    AutofillHints.password,
    AutofillHints.newPassword
  ];
  static const List<String> normalTitle = [
    AutofillHints.nickname,
    AutofillHints.name
  ];
}
