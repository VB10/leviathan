import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ProductText extends Text {
  const ProductText(super.data, [Key? key]) : super(key: key);

  /// Default displayLarge
  ///
  /// [fontSize]: 32, [fontWeight]: FontWeight.w800
  ProductText.displayLarge(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
  }) : super(style: context.textTheme.displayLarge?.copyWith(color: color));

  /// Default displayMedium
  ///
  /// [fontSize]: 22, [fontWeight]: FontWeight.w800
  ProductText.headline2(
    super.data, {
    super.key,
    required BuildContext context,
    int? maxLine,
    Color? color,
  }) : super(
          style: context.textTheme.displayMedium?.copyWith(color: color),
          maxLines: maxLine ?? 1,
          overflow: TextOverflow.ellipsis,
        );

  /// Custom displaySmall
  ///
  /// [fontSize]: 18, [fontWeight]: W800, [color]: secondary
  ProductText.displaySmall(
    super.data, {
    required BuildContext context,
    super.key,
    int? maxLine,
    bool? underLine,
    Color? color,
    super.textAlign,
  }) : super(
          style: context.textTheme.displaySmall?.copyWith(
            decoration: (underLine ?? false) ? TextDecoration.underline : null,
            color: color,
          ),
          maxLines: maxLine,
        );

  /// Custom displaySmall
  ///
  /// color: secondary
  ProductText.headline3Secondary(
    super.data, {
    super.key,
    required BuildContext context,
  }) : super(
          style: context.textTheme.displaySmall
              ?.copyWith(color: context.colorScheme.secondary),
        );

  ProductText.headline4Secondary(
    super.data, {
    super.key,
    required BuildContext context,
  }) : super(
          style: context.textTheme.headlineMedium
              ?.copyWith(color: context.colorScheme.secondary),
        );

  ProductText.headline5Backgrounds(
    super.data, {
    super.key,
    required BuildContext context,
  }) : super(
          style: context.textTheme.headlineSmall
              ?.copyWith(color: context.colorScheme.onBackground),
        );

  /// Custom headline3
  ///
  /// [fontSize]: 18, Default [FontWeight]: FontWeight.w600 [color]: secondary
  ProductText.normalGreyWithBoldOption(
    super.data, {
    super.key,
    required BuildContext context,
    FontWeight? fontWeight,
  }) : super(
          style: context.textTheme.displaySmall?.copyWith(
            color: context.colorScheme.secondary,
            fontWeight: fontWeight ?? FontWeight.w600,
          ),
        );

  /// Default headline5
  ///
  /// [fontSize]: 16.0, [fontWeight]: FontWeight.w800
  ProductText.headline5(
    super.data, {
    super.key,
    required BuildContext context,
    FontWeight? fontWeight,
    super.textAlign,
    int maxLine = 2,
    TextStyle? textStyle,
  }) : super(
          style: textStyle ??
              context.textTheme.headlineSmall?.copyWith(
                fontWeight: fontWeight ?? FontWeight.w900,
              ),
          maxLines: maxLine,
        );

  /// headline5 with extra font weight option
  ///
  /// [fontSize]: 16.0, [fontWeight]: FontWeight.w800
  ProductText.headline5WithBoldOption(
    super.data, {
    super.key,
    required BuildContext context,
    FontWeight? fontWeight,
  }) : super(
          style:
              context.textTheme.headlineSmall?.copyWith(fontWeight: fontWeight),
        );

  /// Headline5 with grey
  ///
  /// [color]: secondary
  ProductText.headline5Grey(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
    int? maxLine = 2,
    FontWeight? weight,
  }) : super(
          maxLines: maxLine,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.headlineSmall?.copyWith(
            color: color ?? context.colorScheme.secondary,
            fontWeight: weight,
          ),
        );

  /// W700 font weight and 16 font size with onPrimary color
  ProductText.semiBoldNormal(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
    int? maxLine = 2,
    TextOverflow super.overflow = TextOverflow.ellipsis,
  }) : super(
          maxLines: maxLine,
          style: context.textTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.w700, color: color),
        );

  /// Default subtitle1
  ///
  /// [fontSize]: 16.0
  ProductText.subtitle1(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
    super.textAlign,
    int? maxLine,
  }) : super(
          maxLines: maxLine,
          style: context.textTheme.titleMedium?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        );

  /// Custom subtitle2
  ///
  /// [fontSize]: 14.0, [fontWeight]: FontWeight.bold, [color]: onPrimary
  ProductText.subtitle2NormalBold(
    super.data, {
    super.key,
    required BuildContext context,
    TextStyle? textStyle,
    Color? color,
    super.maxLines,
  }) : super(
          style: textStyle ??
              context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color ?? context.colorScheme.onPrimary,
              ),
        );

  /// Custom subtitle2
  ///
  /// fontSize: 14.0, [fontWeight]: FontWeight.w600,  [color]: secondary
  ProductText.subtitle2Grey(
    super.data, {
    super.key,
    required BuildContext context,
    FontWeight? weight,
    TextStyle? textStyle,
  }) : super(
          style: textStyle ??
              context.textTheme.titleSmall?.copyWith(
                color: context.colorScheme.secondary,
                fontWeight: weight,
              ),
        );

  ProductText.bodyText1Primary(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
  }) : super(
          style: context.textTheme.bodyLarge
              ?.copyWith(color: color ?? context.colorScheme.primary),
        );

  ProductText.bodyText1Normal(
    super.data, {
    super.key,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          style: context.textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        );
}

extension ProductTextExtension on ProductText {
  Text get overflowMax {
    return Text(
      data ?? '',
      style: style,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text underLine({bool isEnabled = false}) {
    return Text(
      data ?? '',
      style: style?.copyWith(
        decoration: isEnabled ? TextDecoration.underline : null,
      ),
    );
  }

  Text align({TextAlign? textAlign}) {
    return Text(data ?? '', textAlign: textAlign, style: style);
  }

  Text color(Color? color) {
    return Text(data ?? '', style: style?.copyWith(color: color));
  }

  Text maxLine({required int maxLine}) {
    return Text(
      data ?? '',
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }

  Text fontWeight({required FontWeight weight}) {
    return Text(data ?? '', style: style?.copyWith(fontWeight: weight));
  }

  Text get overFlow {
    return Text(
      data ?? '',
      style: style?.copyWith(overflow: TextOverflow.ellipsis),
    );
  }

  Text fontSize({double? fontSize}) {
    return Text(data ?? '', style: style?.copyWith(fontSize: fontSize));
  }

  Text lineHeight({required double lineHeight}) {
    return Text(
      data ?? '',
      style: style?.copyWith(
        height: lineHeight,
      ),
    );
  }
}

extension TextExtension on ProductText {
  Text withMaxLength(int length) {
    return Text(
      (data?.length ?? 0) > length
          ? '${data?.substring(0, length - 3) ?? ''}...'
          : data ?? '',
      style: style,
    );
  }
}
