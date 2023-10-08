import 'package:flutter/material.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/spaces_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';
import 'package:roomiz/presentation/resources/styles/icons/custom_icons.dart';

// ignore: must_be_immutable
class CheckoutStepper extends StatelessWidget {
  CheckoutStepper({required this.stepperIndex, Key? key}) : super(key: key);

  int stepperIndex;

  @override
  Widget build(BuildContext context) {
    print('test---[> $stepperIndex');
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: PaddingManager.s15,
      ),
      height: AppConstants.getDeviceHeight(context: context) / 8,
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorsManager.kPrimaryColor,
            child: Icon(
              Icons.info,
              color: (stepperIndex >= 0)
                  ? ColorsManager.kDarkYellowColor
                  : ColorsManager.kAppBackgroundColor,
            ),
          ),
          Expanded(
            child: Container(
              height: 4,
              color: (stepperIndex > 0)
                  ? ColorsManager.kPrimaryColor
                  : ColorsManager.kLightGrayColor,
            ),
          ),
          CircleAvatar(
            backgroundColor: ColorsManager.kPrimaryColor,
            child: Icon(
              CustomIcons.truck,
              color: (stepperIndex >= 1)
                  ? ColorsManager.kDarkYellowColor
                  : ColorsManager.kAppBackgroundColor,
              size: 25,
            ),
          ),
          Expanded(
            child: Container(
              height: 4,
              color: (stepperIndex > 1)
                  ? ColorsManager.kPrimaryColor
                  : ColorsManager.kLightGrayColor,
            ),
          ),
          CircleAvatar(
            backgroundColor: ColorsManager.kPrimaryColor,
            child: Icon(
              CustomIcons.creditCard,
              color: (stepperIndex >= 2)
                  ? ColorsManager.kDarkYellowColor
                  : ColorsManager.kAppBackgroundColor,
            ),
          ),
          Expanded(
            child: Container(
              height: 4,
              color: (stepperIndex > 2)
                  ? ColorsManager.kPrimaryColor
                  : ColorsManager.kLightGrayColor,
            ),
          ),
          CircleAvatar(
            backgroundColor: ColorsManager.kPrimaryColor,
            child: Icon(
              CustomIcons.okCircled,
              color: (stepperIndex >= 3)
                  ? ColorsManager.kDarkYellowColor
                  : ColorsManager.kAppBackgroundColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
