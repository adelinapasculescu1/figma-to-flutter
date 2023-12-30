import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineSmallMetropolisBlack900 =>
      theme.textTheme.headlineSmall!.metropolis.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
}

extension on TextStyle {
  TextStyle get metropolis {
    return copyWith(
      fontFamily: 'Metropolis',
    );
  }

  TextStyle get lexendExa {
    return copyWith(
      fontFamily: 'Lexend Exa',
    );
  }
}
