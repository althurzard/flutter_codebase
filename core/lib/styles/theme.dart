// G1 Mobile Light Theme
// Author: baocq@galaxy.one
// Date: 2021-05-26

import 'package:flutter/material.dart';
import 'colors.dart';
import 'constant.dart';
import 'size.dart';

// Ref: Font Weights: https://api.flutter.dev/flutter/dart-ui/FontWeight-class.html
// Ref: Font Weights for TextTheme: https://api.flutter.dev/flutter/material/TextTheme-class.html
class CoreAppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    var colorSceme = ColorScheme.fromSwatch(
        accentColor: AppColors.accent,
        primarySwatch: AppColors.primarySwatch,
        primaryColorDark: AppColors.primary,
        backgroundColor: AppColors.white,
        errorColor: AppColors.error,
        brightness: Brightness.light);
    return ThemeData(
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primary,
          selectionColor: AppColors.primary400,
          selectionHandleColor: AppColors.primary200),
      inputDecorationTheme: Theme.of(context)
          .inputDecorationTheme
          .copyWith(labelStyle: const TextStyle(color: AppColors.midGrey)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              primary: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: AppConsts.kCardBorder))),
      primaryColor: AppColors.primary,
      fontFamily: AppConsts.defaultFont,
      disabledColor: AppColors.neutral40,
      unselectedWidgetColor: AppColors.neutral40,
      scaffoldBackgroundColor: AppColors.white,
      indicatorColor: AppColors.neutral40,
      colorScheme: colorSceme,
      bottomAppBarColor: AppColors.lightGray,
      dialogBackgroundColor: AppColors.backgroundLight,
      dividerColor: Colors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
          color: AppColors.white,
          iconTheme: const IconThemeData(color: AppColors.white),
          textTheme: theme.textTheme.copyWith(
              caption: const TextStyle(
                  color: AppColors.black,
                  fontSize: AppSizes.textLargeSize,
                  fontFamily: AppConsts.defaultFont,
                  fontWeight: FontWeight.w400))),
      textTheme: const TextTheme(
              subtitle1: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: AppConsts.defaultFont,
              ),
              subtitle2: TextStyle(
                  fontSize: 14,
                  color: AppColors.kTextColor,
                  fontWeight: FontWeight.normal,
                  fontFamily: AppConsts.defaultFont),
              bodyText1: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: AppConsts.defaultFont,
                  color: AppColors.black),
              bodyText2: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConsts.defaultFont,
                  color: AppColors.black),
              headline1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTextColor),
              headline2: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kTextColor),
              headline3: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
              headline4: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTextColor))
          .apply(
              fontFamily: AppConsts.defaultFont,
              bodyColor: AppColors.kTextColor),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}

class AppTheme {
  static TextStyle textBold = const TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.rowSubtitleColor,
      fontSize: 12);
  static TextStyle textSemiBold = const TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.rowSubtitleColor,
      fontSize: 12);
  static TextStyle textNormal = const TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.rowSubtitleColor,
      fontSize: 12);
  static TextStyle avatarText = const TextStyle(
      color: AppColors.white, fontSize: 14, fontWeight: FontWeight.bold);
}
