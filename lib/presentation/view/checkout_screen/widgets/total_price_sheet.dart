import 'package:flutter/material.dart';
import 'package:roomiz/application/components/reusable_components.dart';
import 'package:roomiz/application/constants/constants.dart';
import 'package:roomiz/application/extensions/extensions.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/size_manager.dart';
import 'package:roomiz/presentation/resources/sizes_and_spaces/spaces_manager.dart';
import 'package:roomiz/presentation/resources/styles/colors/colors_manager.dart';

class TotalPriceSheet extends StatelessWidget {
  TotalPriceSheet({Key? key, required this.pageController}) : super(key: key);

  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.getDeviceHeight(context: context) / 2.3,
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: PaddingManager.s15, vertical: PaddingManager.s8),
      decoration: const BoxDecoration(
        color: ColorsManager.kWhiteW400,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            SizeManager.s30,
          ),
          topRight: Radius.circular(
            SizeManager.s30,
          ),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorsManager.kGrayColor,
            spreadRadius: SizeManager.s6,
            blurRadius: SizeManager.s20,
            offset: Offset(
              SizeManager.s10,
              SizeManager.s10,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          SizeManager.s20.ph,
          Row(
            children: [
              Expanded(
                flex: 3,
                child: customTextFormField(
                  hintText: 'Enter Promo Code',
                  filled: true,
                  fillColor: ColorsManager.kGrayW300Color,
                ),
              ),
              SizeManager.s10.pw,
              Expanded(
                child: customButton(
                  onPressed: () {},
                  buttonTitle: 'Apply',
                  buttonTitleColor: ColorsManager.kPrimaryColor,
                  buttonColor: ColorsManager.kDarkYellowColor,
                ),
              ),
            ],
          ),
          SizeManager.s10.ph,
          const Divider(
            indent: 10,
            endIndent: 10,
          ),
          SizeManager.s10.ph,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Text(
                'EGP 80.00',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kGrayColor,
                ),
              ),
            ],
          ),
          SizeManager.s6.ph,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Text(
                'EGP 50.00',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kGrayColor,
                ),
              ),
            ],
          ),
          SizeManager.s6.ph,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Text(
                'EGP 800.00',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.kGrayColor,
                ),
              ),
            ],
          ),
          SizeManager.s20.ph,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Text(
                'EGP 815.00',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.kPrimaryColor,
                ),
              ),
            ],
          ),
          SizeManager.s10.ph,
          customButton(
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(
                  milliseconds: 800,
                ),
                curve: Curves.easeIn,
              );
            },
            buttonTitle: 'Buy Now',
            buttonTitleColor: ColorsManager.kWhiteW400,
          ),
        ],
      ),
    );
  }
}
