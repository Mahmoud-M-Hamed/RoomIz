import 'package:flutter/material.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/icons/custom_icons.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

// -------------------------<Custom App Bar>----------------------------------

PreferredSizeWidget customAppBar(
        {required BuildContext context,
        required String appBarTitle,
        List<Widget>? appBarActions}) =>
    AppBar(
      leading: IconButton(
        icon: const Icon(
          CustomIcons.kBackArrow,
          color: ColorsManager.kPrimaryColor,
          size: SizeManager.s30,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        appBarTitle,
      ),
      actions: appBarActions,
    );

// ---------------------------------<Custom Buttons>----------------------------------------

Widget customButton({
  required VoidCallback onPressed,
  Color buttonColor = ColorsManager.kButtonColor,
  required String buttonTitle,
  required Color buttonTitleColor,
  IconData? buttonIcon,
  double width = double.infinity,
  double height = SizeManager.s45,
}) =>
    TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size(width, height)),
        backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
        shape: MaterialStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManager.s8),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonTitle,
            style: StylesManager.mediumStyle(
              fontColor: buttonTitleColor,
            ),
          ),
          (buttonIcon != null) ? Icon(buttonIcon, color: ColorsManager.kWhiteColor,) : Container(),
        ],
      ),
    );
