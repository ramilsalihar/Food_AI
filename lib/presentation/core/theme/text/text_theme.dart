import 'package:flutter/material.dart';
import 'package:food_ai/presentation/core/theme/colors/app_colors.dart';
import 'package:food_ai/presentation/core/theme/dimens/dimens.dart';

class AppTextTheme extends TextTheme {
  final AppColors colors;
  final Dimens dimens;

  AppTextTheme({
    required this.colors,
    required this.dimens,
  }) : super(
          displayLarge: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: dimens.textDisplayLarge,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: dimens.textDisplayMedium,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: dimens.textDisplaySmall,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: dimens.textHeadlineLarge,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: dimens.textHeadlineMedium,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: dimens.textHeadlineSmall,
            color: colors.secondaryTextColor,
          ),
        );
}
