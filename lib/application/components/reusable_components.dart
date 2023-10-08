import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/icons/custom_icons.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

// -------------------------<Custom App Bar>----------------------------------

PreferredSizeWidget customAppBar({
  required BuildContext context,
  required VoidCallback onPressed,
  required String appBarTitle,
  List<Widget>? appBarActions,
}) =>
    AppBar(
      leading: IconButton(
        icon: const Icon(
          CustomIcons.kBackArrow,
          color: ColorsManager.kPrimaryColor,
          size: SizeManager.s30,
        ),
        onPressed: onPressed,
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
          (buttonIcon != null)
              ? Icon(
                  buttonIcon,
                  color: ColorsManager.kWhiteColor,
                  size: 15,
                )
              : Container(),
        ],
      ),
    );

// -------------------------------<Custom TextField>------------------------------------------

Widget customTextFormField({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.emailAddress,
  List<TextInputFormatter>? filteringTextInputFormatter,
  String? Function(String?)? validation,
  int maxLines = 1,
  double circularBorderRadiusValue = SizeManager.s10,
  double contentPaddingHorizontal = SizeManager.s20,
  double contentPaddingVertical = SizeManager.s10,
  String? labelText,
  String? hintText,
  bool filled = false,
  bool readOnly = false,
  Color fillColor = ColorsManager.kWhiteColor,
  BorderSide borderSide = BorderSide.none,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) =>
    TextFormField(
      readOnly: readOnly,
      keyboardType: keyboardType,
      inputFormatters: filteringTextInputFormatter,
      controller: controller,
      validator: validation,
      maxLines: maxLines,
      cursorColor: ColorsManager.kPrimaryColor,
      cursorHeight: 18,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsDirectional.symmetric(
            horizontal: contentPaddingHorizontal,
            vertical: contentPaddingVertical),
        labelText: labelText,
        hintText: hintText,
        hintStyle: StylesManager.regularStyle(
          fontColor: ColorsManager.kLightGrayColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circularBorderRadiusValue),
          borderSide: borderSide,
        ),
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
