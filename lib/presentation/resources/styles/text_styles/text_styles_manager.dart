import 'package:flutter/material.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';

class StylesManager {
  static TextStyle _getTextStyle(
          {required FontWeight fontWeight,
          required double fontSize,
          required Color fontColor}) =>
      TextStyle(
        color: fontColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      );

  static TextStyle boldStyle({
    required Color fontColor,
    double fontSize = FontSizeManager.s18,
  }) =>
      _getTextStyle(
          fontColor: fontColor,
          fontWeight: FontWeightManager.kBoldFont,
          fontSize: fontSize);

  static TextStyle mediumStyle(
      {required Color fontColor, double fontSize = FontSizeManager.s14}) =>
      _getTextStyle(
          fontColor: fontColor,
          fontWeight: FontWeightManager.kMediumFont,
          fontSize: fontSize);

  static TextStyle regularStyle(
      {required Color fontColor, double fontSize = FontSizeManager.s14}) =>
      _getTextStyle(
          fontColor: fontColor,
          fontWeight: FontWeightManager.kRegularFont,
          fontSize: fontSize);

}
