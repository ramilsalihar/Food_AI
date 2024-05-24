import 'package:flutter/material.dart';
import 'package:food_ai/presentation/core/theme/dimens/dimens.dart';
import 'package:food_ai/presentation/core/theme/text/text_theme.dart';

import 'colors/app_colors.dart';

final dimens = Dimens();

class AppTheme {
  static const appColors = AppColors();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: appColors.primaryColor,
    cardColor: appColors.secondaryColor,
    canvasColor: appColors.thirdColor,
    dialogTheme: DialogTheme(
      backgroundColor: appColors.alertButtonColor,
    ),
    cardTheme: CardTheme(
      color: appColors.badgeColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dimens.cardBorderRadius,
        ),
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: appColors.primaryColor,
      secondary: appColors.secondaryColor,
      background: appColors.cardItemColor,
    ),
    textTheme: AppTextTheme(
      colors: appColors,
      dimens: dimens,
    ),

  );

  static final ThemeData darkTheme = ThemeData();
}
