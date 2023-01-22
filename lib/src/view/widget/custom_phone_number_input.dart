import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:leviathan/src/view/padding/kommunity_padding.dart';
import 'package:oz_kommunity/features/profile_flow/profile/view/profile_index.dart';
import 'package:oz_kommunity/product/utility/validator/form_validator.dart';

class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({super.key, this.onInputChanged, this.initialValue});
  final ValueChanged<PhoneNumber>? onInputChanged;
  final PhoneNumber? initialValue;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.appTheme.copyWith(
        listTileTheme: const ListTileThemeData(
          contentPadding: KommunityPadding.horizontalBig(),
        ),
      ),
      child: InternationalPhoneNumberInput(
        onInputChanged: onInputChanged,
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          setSelectorButtonAsPrefixIcon: true,
          leadingPadding: WidgetSizes.spacingS,
        ),
        hintText: LocaleKeys.login_phoneNumber.tr(),
        errorMessage: LocaleKeys.login_invalidPhone.tr(),
        ignoreBlank: true,
        initialValue: initialValue,
        selectorTextStyle: const TextStyle(color: Colors.black),
        validator: (value) => FormValidator().emptyValidate(value),
        formatInput: false,
        keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder: const OutlineInputBorder(),
        inputDecoration: InputDecoration(
          hintText: LocaleKeys.login_phoneNumber.tr(),
          contentPadding: const KommunityPadding.verticalNormal(),
          enabledBorder: _getBorder(context),
          focusedBorder: _getBorder(context),
          border: _getBorder(context),
          errorBorder: _getBorder(context, color: context.colorScheme.error),
          disabledBorder: _getBorder(context),
          focusedErrorBorder: _getBorder(context, color: context.colorScheme.error),
        ),
      ),
    );
  }

  OutlineInputBorder _getBorder(BuildContext context, {Color? color}) {
    return OutlineInputBorder(
      borderRadius: context.lowBorderRadius,
      borderSide: BorderSide(
        color: color ?? context.colorScheme.secondary.withOpacity(0.14),
      ),
    );
  }
}
