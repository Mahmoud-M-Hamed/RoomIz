import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/fonts/fonts_manager.dart';
import 'package:roomiz/presentation/resources/styles/text_styles/text_styles_manager.dart';

class OrderSuccessOrFailScreen extends StatelessWidget {
  const OrderSuccessOrFailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeManager.s20.ph,
        Expanded(
          flex: 2,
          child: successImageContainer(context: context),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    );
  }

  Widget successImageContainer({required BuildContext context}) => Container(
        width: AppConstants.getDeviceWidth(context: context) / 1.156,
        decoration: BoxDecoration(
          color: ColorsManager.kWhiteW400,
          borderRadius: BorderRadius.circular(SizeManager.s15),
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Lottie.asset(
              'assets/animations/success-animation.json',
              repeat: true,
            ),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Lottie.asset(
                    'assets/animations/right-yellow.json',
                    repeat: true,
                    reverse: false,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Success',
                  style: StylesManager.boldStyle(
                    fontSize: FontSizeManager.s27,
                    fontColor: ColorsManager.kDarkYellowColor,
                  ),
                ),
                SizeManager.s15.ph,
                Text(
                  'Thank You !!',
                  style: StylesManager.mediumStyle(
                    fontColor: ColorsManager.kPrimaryColor,
                    fontSize: FontSizeManager.s25,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Transaction Successful',
                    style: StylesManager.mediumStyle(
                      fontColor: ColorsManager.kPrimaryColor,
                      fontSize: FontSizeManager.s22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
