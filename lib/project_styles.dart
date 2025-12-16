import 'package:flutter/material.dart';

class AppConstants {
  static const double minButtonWidth = 90;
  static const double minButtonHeight = 90;
  static const double buttonPadding = 24;
  static const double textStyleFontSize = 24;
  static const Color cAndACStyleColor = Colors.red;
  static const Color numberStyleColor = Colors.white;
  static const Color operatorStyleColor = Colors.green;
}

class ProjectStyles {
  static final ButtonStyle numberButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(
      AppConstants.minButtonWidth,
      AppConstants.minButtonHeight,
    ),
    shape: CircleBorder(),
    padding: const EdgeInsets.all(AppConstants.buttonPadding),
  );
  static final TextStyle numberButtonTextStyle = const TextStyle(
    color: AppConstants.numberStyleColor,
    fontSize: AppConstants.textStyleFontSize,
    fontWeight: FontWeight.bold,
  );

  static final ButtonStyle operatorButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(
      AppConstants.minButtonWidth,
      AppConstants.minButtonHeight,
    ),
    shape: CircleBorder(),
    padding: const EdgeInsets.all(AppConstants.buttonPadding),
    textStyle: const TextStyle(
      fontSize: AppConstants.textStyleFontSize,
      fontWeight: FontWeight.bold,
    ),
  );
  static final TextStyle operatorButtonTextStyle = const TextStyle(
    color: AppConstants.operatorStyleColor,
    fontSize: AppConstants.textStyleFontSize,
    fontWeight: FontWeight.bold,
  );

  static final ButtonStyle cAndACButtonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(
      AppConstants.minButtonWidth,
      AppConstants.minButtonHeight,
    ),
    shape: CircleBorder(),
    padding: const EdgeInsets.all(AppConstants.buttonPadding),
    textStyle: const TextStyle(
      fontSize: AppConstants.textStyleFontSize,
      fontWeight: FontWeight.bold,
    ),
  );
  static final TextStyle cAndACButtonTextStyle = const TextStyle(
    color: AppConstants.cAndACStyleColor,
    fontSize: AppConstants.textStyleFontSize,
    fontWeight: FontWeight.bold,
  );
}
