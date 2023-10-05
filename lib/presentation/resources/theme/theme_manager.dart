import 'package:flutter/material.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class AppTheme{

  static ThemeData get appTheme => ThemeData(

    // ----------------------------------<main Colors>----------------------------------------
    primaryColor: ColorsManager.kPrimaryColor,
    scaffoldBackgroundColor: ColorsManager.kAppBackgroundColor,

    // ----------------------------------<appBar Theme>----------------------------------------

    appBarTheme: AppBarTheme(
      color: ColorsManager.kAppBackgroundColor,
      centerTitle: true,
      elevation: AppConstants.zero,
      titleTextStyle:
      StylesManager.boldStyle(
        fontColor: ColorsManager.kPrimaryColor,
        fontSize: FontSizeManager.s22,
      ),
    ),
  );

}